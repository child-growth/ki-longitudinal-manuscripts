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

unadjusted

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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       98    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        3    233
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
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      129    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       15    240
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      167    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       15    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    303
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0       13    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      169    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       14    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       56    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    261
0-24 months   ki1000109-EE               PAKISTAN                       0%                 0      141    379
0-24 months   ki1000109-EE               PAKISTAN                       0%                 1      120    379
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       68    379
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1       50    379
0-24 months   ki1000109-EE               PAKISTAN                       >5%                0        0    379
0-24 months   ki1000109-EE               PAKISTAN                       >5%                1        0    379
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 0      309   2449
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 1       48   2449
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           0     1170   2449
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           1      154   2449
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                0      671   2449
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                1       97   2449
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                 0       10    271
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    271
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       75    271
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       46    271
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       94    271
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       46    271
0-24 months   ki1114097-CONTENT          PERU                           0%                 0        6    215
0-24 months   ki1114097-CONTENT          PERU                           0%                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      138    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        4    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                0       67    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                1        0    215
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      185   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       35   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     3921   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      711   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      458   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      132   5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0       20    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      145    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        3    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       89    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1        6    263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      130    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0      100    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        1    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    233
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                 0       13    251
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        1    251
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      180    251
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       13    251
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                0       39    251
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                1        5    251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                 0       16    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                 1        1    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      138    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        6    240
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
0-6 months    ki1000109-EE               PAKISTAN                       0%                 0      219    379
0-6 months    ki1000109-EE               PAKISTAN                       0%                 1       42    379
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0      103    379
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1       15    379
0-6 months    ki1000109-EE               PAKISTAN                       >5%                0        0    379
0-6 months    ki1000109-EE               PAKISTAN                       >5%                1        0    379
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
0-6 months    ki1114097-CONTENT          PERU                           0%                 0        6    215
0-6 months    ki1114097-CONTENT          PERU                           0%                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      142    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1        0    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                0       67    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                1        0    215
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      168   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1        7   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     4259   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      108   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      530   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       20   5092
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      164    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       14    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        2    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      164    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       12    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       55    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    245
6-24 months   ki1000109-EE               PAKISTAN                       0%                 0      144    372
6-24 months   ki1000109-EE               PAKISTAN                       0%                 1      110    372
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       72    372
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1       46    372
6-24 months   ki1000109-EE               PAKISTAN                       >5%                0        0    372
6-24 months   ki1000109-EE               PAKISTAN                       >5%                1        0    372
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 0      309   2449
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 1       48   2449
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           0     1170   2449
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           1      154   2449
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                0      671   2449
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                1       97   2449
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                 0        3    251
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    251
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       74    251
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       42    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       88    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       44    251
6-24 months   ki1114097-CONTENT          PERU                           0%                 0        6    215
6-24 months   ki1114097-CONTENT          PERU                           0%                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      138    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        4    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                0       67    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                1        0    215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      182   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       29   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     3980   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      648   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      465   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      125   5429


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/75261b32-5d6b-4255-9ce9-24a523d2a81e/3e211e79-74b0-4d2c-832b-2540c4a23870/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75261b32-5d6b-4255-9ce9-24a523d2a81e/3e211e79-74b0-4d2c-832b-2540c4a23870/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75261b32-5d6b-4255-9ce9-24a523d2a81e/3e211e79-74b0-4d2c-832b-2540c4a23870/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75261b32-5d6b-4255-9ce9-24a523d2a81e/3e211e79-74b0-4d2c-832b-2540c4a23870/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.4285714    0.3226165   0.5345264
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.2978723    0.1669715   0.4287732
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.3658537    0.3100612   0.4216461
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   NA                0.0849673    0.0407560   0.1291786
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.0904523    0.0622544   0.1186501
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     >5%                  NA                0.1062802    0.0642679   0.1482925
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1344538    0.0801841   0.1887235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1163142    0.0865540   0.1460744
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1263021    0.0879474   0.1646568
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.1590909    0.0991808   0.2190011
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.1534974    0.1416869   0.1653079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.2237288    0.1875851   0.2598725
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.0722892    0.0165097   0.1280686
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1063830    0.0181291   0.1946368
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.0734266    0.0431606   0.1036925
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0400000   -0.0045040   0.0845040
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0247309    0.0192267   0.0302352
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.0363636    0.0188137   0.0539135
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.4358974    0.3257145   0.5460803
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.2765957    0.1485531   0.4046384
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.3550725    0.2985463   0.4115987
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   NA                0.0970149    0.0468670   0.1471628
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.0812183    0.0542265   0.1082100
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     >5%                  NA                0.0891089    0.0497934   0.1284244
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1344538    0.0801841   0.1887235
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1163142    0.0865540   0.1460744
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1263021    0.0879474   0.1646568
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.1374408    0.0831889   0.1916926
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.1400173    0.1290039   0.1510307
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.2118644    0.1755767   0.2481521


### Parameter: E(Y)


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1220906   0.0961547   0.1480266
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1220906   0.0961547   0.1480266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6950355   0.4197840   1.150769
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                0.8536585   0.6384559   1.141399
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             0%                1.0645535   0.5804122   1.952533
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     >5%                  0%                1.2508361   0.6507399   2.404326
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.8650869   0.5937787   1.260361
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9393717   0.5914580   1.491939
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                0.9648409   0.6576245   1.415577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.4062954   0.9347623   2.115689
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                1.4716312   0.4739794   4.569182
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                1.0157343   0.4235009   2.436161
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                0.6182734   0.1981035   1.929607
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                0.9090909   0.2868837   2.880771
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6345432   0.3744530   1.075289
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                0.8145780   0.6042234   1.098166
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             0%                0.8371730   0.4528245   1.547749
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     >5%                  0%                0.9185072   0.4655165   1.812300
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.8650869   0.5937787   1.260361
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9393717   0.5914580   1.491939
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                1.0187465   0.6797325   1.526842
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.5414962   1.0018409   2.371844


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0577580   -0.1519051   0.0363890
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   NA                 0.0087002   -0.0312543   0.0486548
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0123631   -0.0547940   0.0300678
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0022468   -0.0560378   0.0605315
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                 0.0046339   -0.0456361   0.0549039
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                -0.0134878   -0.0565735   0.0295979
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0743014   -0.1724560   0.0238531
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   NA                -0.0107136   -0.0555141   0.0340869
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0123631   -0.0547940   0.0300678
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0102844   -0.0430936   0.0636625


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.1557604   -0.4400372   0.0723976
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   NA                 0.0928841   -0.4510741   0.4329309
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.1012619   -0.5044541   0.1938752
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0139263   -0.4224569   0.3164353
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                 0.0602410   -0.8832383   0.5310487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                -0.5087407   -3.3770372   0.4799453
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.2054819   -0.5105247   0.0379591
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   NA                -0.1241412   -0.7828773   0.2912056
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.1012619   -0.5044541   0.1938752
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0696186   -0.3718517   0.3690210

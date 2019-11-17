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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
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

agecat      studyid                    country                        perdiar24    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 0       13    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 1        5    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      112    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       19    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                0       62    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                1       20    231
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 0       31     65
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 1        3     65
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       23     65
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        6     65
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                0        2     65
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                1        0     65
Birth       ki0047075b-MAL-ED          INDIA                          0%                 0        4     47
Birth       ki0047075b-MAL-ED          INDIA                          0%                 1        1     47
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0       27     47
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1        6     47
Birth       ki0047075b-MAL-ED          INDIA                          >5%                0        6     47
Birth       ki0047075b-MAL-ED          INDIA                          >5%                1        3     47
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 0        2     27
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 1        0     27
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0       19     27
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        0     27
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                0        4     27
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                1        2     27
Birth       ki0047075b-MAL-ED          PERU                           0%                 0       21    233
Birth       ki0047075b-MAL-ED          PERU                           0%                 1        0    233
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       78    233
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           1       11    233
Birth       ki0047075b-MAL-ED          PERU                           >5%                0      108    233
Birth       ki0047075b-MAL-ED          PERU                           >5%                1       15    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       39    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        3    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0       64    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        6    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        1    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        7    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        2    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       66    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       19    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       29    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        2    125
Birth       ki1000109-EE               PAKISTAN                       0%                 0       88    240
Birth       ki1000109-EE               PAKISTAN                       0%                 1       73    240
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           0       52    240
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           1       27    240
Birth       ki1000109-EE               PAKISTAN                       >5%                0        0    240
Birth       ki1000109-EE               PAKISTAN                       >5%                1        0    240
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 0       41    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 1       10    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      286    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       59    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                0      182    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                1       27    605
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                 0       51    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                 1        4    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      302    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       25    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                0      138    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                1       19    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      129    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       22    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      338    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       48    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      164    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       31    732
Birth       ki1114097-CMIN             BANGLADESH                     0%                 0        6     26
Birth       ki1114097-CMIN             BANGLADESH                     0%                 1        6     26
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0        3     26
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        1     26
Birth       ki1114097-CMIN             BANGLADESH                     >5%                0        8     26
Birth       ki1114097-CMIN             BANGLADESH                     >5%                1        2     26
Birth       ki1114097-CONTENT          PERU                           0%                 0        0      2
Birth       ki1114097-CONTENT          PERU                           0%                 1        0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           0        1      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           1        0      2
Birth       ki1114097-CONTENT          PERU                           >5%                0        1      2
Birth       ki1114097-CONTENT          PERU                           >5%                1        0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 0       50   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       26   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     1720   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      729   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      196   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      102   2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0        5    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        1    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      119    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       23    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       73    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1       20    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      103    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        3    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       98    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        3    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                 0        3    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        0    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      156    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       35    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                0       32    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                1       10    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 0       13    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      137    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        6    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                0       74    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                1        5    236
6 months    ki0047075b-MAL-ED          PERU                           0%                 0        5    273
6 months    ki0047075b-MAL-ED          PERU                           0%                 1        2    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       88    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           1       21    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                0      120    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                1       37    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       60    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1       18    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      142    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       32    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        4    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      131    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       46    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        9    247
6 months    ki1000109-EE               PAKISTAN                       0%                 0      130    373
6 months    ki1000109-EE               PAKISTAN                       0%                 1      126    373
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0       60    373
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1       57    373
6 months    ki1000109-EE               PAKISTAN                       >5%                0        0    373
6 months    ki1000109-EE               PAKISTAN                       >5%                1        0    373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       38    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1       35    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       28    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1       18    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      151    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1      110    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 0       10    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 1        5    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      247    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       92    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                0      136    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                1       47    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 0        9    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 1        3    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      348    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       61    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                0      151    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                1       32    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      108    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       26    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      306    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       80    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      151    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       44    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       21    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        8    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       51    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1       19    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      137    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                1       63    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                 0        2    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                 1        0    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       66    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       46    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                0       82    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                1       47    243
6 months    ki1114097-CONTENT          PERU                           0%                 0        4    215
6 months    ki1114097-CONTENT          PERU                           0%                 1        2    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      129    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1       13    215
6 months    ki1114097-CONTENT          PERU                           >5%                0       63    215
6 months    ki1114097-CONTENT          PERU                           >5%                1        4    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      120   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       36   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     3120   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1     1033   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      370   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      152   4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0        3    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        3    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0       74    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       56    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       34    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1       42    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0       74    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       86    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        5    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                 0        2    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        1    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      103    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       80    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       25    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                1       16    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       10    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        2    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      111    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       29    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       57    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1       19    228
24 months   ki0047075b-MAL-ED          PERU                           0%                 0        1    201
24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       49    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1       35    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                0       77    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                1       39    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       48    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1       23    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      105    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       61    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        1    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        5    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       43    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1      113    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       15    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1       37    214
24 months   ki1000109-EE               PAKISTAN                       0%                 0       36    167
24 months   ki1000109-EE               PAKISTAN                       0%                 1       79    167
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       13    167
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1       39    167
24 months   ki1000109-EE               PAKISTAN                       >5%                0        0    167
24 months   ki1000109-EE               PAKISTAN                       >5%                1        0    167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0        4    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      123    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1      156    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0       58    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1       87    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0        5    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        4    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      269    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1      126    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      114    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1       60    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0       95    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       28    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      206    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       70    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0       81    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       34    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                 0        2    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        1    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       38    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       76    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       37    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       88    242
24 months   ki1114097-CONTENT          PERU                           0%                 0        3    164
24 months   ki1114097-CONTENT          PERU                           0%                 1        1    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0       94    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1       14    164
24 months   ki1114097-CONTENT          PERU                           >5%                0       46    164
24 months   ki1114097-CONTENT          PERU                           >5%                1        6    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0       97   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       68   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     2492   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1     1602   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      258   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      235   4752


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/e48b8f71-9c1b-4923-a891-8a119dd144c9/d6a94cf0-5f12-427b-b808-04acbee0f32e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e48b8f71-9c1b-4923-a891-8a119dd144c9/d6a94cf0-5f12-427b-b808-04acbee0f32e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e48b8f71-9c1b-4923-a891-8a119dd144c9/d6a94cf0-5f12-427b-b808-04acbee0f32e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e48b8f71-9c1b-4923-a891-8a119dd144c9/d6a94cf0-5f12-427b-b808-04acbee0f32e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH   0%                   NA                0.2777778   0.0704115   0.4851440
Birth       ki0047075b-MAL-ED          BANGLADESH   (0%, 5%]             NA                0.1450382   0.0846059   0.2054705
Birth       ki0047075b-MAL-ED          BANGLADESH   >5%                  NA                0.2439024   0.1507530   0.3370519
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   NA                0.1650026   0.1137337   0.2162715
Birth       ki1017093-NIH-Birth        BANGLADESH   (0%, 5%]             NA                0.1691526   0.1373770   0.2009282
Birth       ki1017093-NIH-Birth        BANGLADESH   >5%                  NA                0.1341945   0.1014408   0.1669482
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.1419121   0.1067804   0.1770439
Birth       ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.1327345   0.1046973   0.1607717
Birth       ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.1470867   0.1144195   0.1797540
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.3285863   0.1864424   0.4707303
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.3033901   0.2832319   0.3235482
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.2997590   0.2694497   0.3300682
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                0.3919521   0.2211777   0.5627266
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.3650249   0.2418397   0.4882102
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  NA                0.4408391   0.3704849   0.5111933
6 months    ki1017093-NIH-Birth        BANGLADESH   0%                   NA                0.3333333   0.0945517   0.5721150
6 months    ki1017093-NIH-Birth        BANGLADESH   (0%, 5%]             NA                0.2713864   0.2240064   0.3187665
6 months    ki1017093-NIH-Birth        BANGLADESH   >5%                  NA                0.2568306   0.1934736   0.3201876
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.1842645   0.1270765   0.2414525
6 months    ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2135165   0.1745146   0.2525184
6 months    ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.2144214   0.1599723   0.2688705
6 months    ki1112895-Guatemala BSC    GUATEMALA    0%                   NA                0.2758621   0.1129200   0.4388041
6 months    ki1112895-Guatemala BSC    GUATEMALA    (0%, 5%]             NA                0.2714286   0.1670791   0.3757781
6 months    ki1112895-Guatemala BSC    GUATEMALA    >5%                  NA                0.3150000   0.2505146   0.3794854
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.2449856   0.1776653   0.3123058
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.2497572   0.2345097   0.2650047
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.2773905   0.2331385   0.3216425
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.2229272   0.1500674   0.2957871
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2611369   0.2103136   0.3119601
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.2753853   0.1939219   0.3568487
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.4349167   0.3466888   0.5231446
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.3919111   0.3738899   0.4099324
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.4643391   0.4164447   0.5122335


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH   NA                   NA                0.1904762   0.1397281   0.2412242
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1586777   0.1295391   0.1878163
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1379781   0.1129774   0.1629789
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3035778   0.2836422   0.3235133
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1112895-Guatemala BSC    GUATEMALA    NA                   NA                0.3010033   0.2489243   0.3530824
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2527427   0.2386864   0.2667990
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4008838   0.3839145   0.4178532


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH   (0%, 5%]             0%                0.5221374   0.2220726   1.227650
Birth       ki0047075b-MAL-ED          BANGLADESH   >5%                  0%                0.8780488   0.3796172   2.030913
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH   (0%, 5%]             0%                1.0251512   0.7743665   1.357155
Birth       ki1017093-NIH-Birth        BANGLADESH   >5%                  0%                0.8132869   0.5968403   1.108229
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.9353285   0.7355006   1.189448
Birth       ki1017093c-NIH-Crypto      BANGLADESH   >5%                  0%                1.0364634   0.8065947   1.331841
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                0.9233191   0.5992258   1.422700
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                0.9122685   0.5884471   1.414288
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             0%                0.9312998   0.5365591   1.616447
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  0%                1.1247268   0.7073173   1.788462
6 months    ki1017093-NIH-Birth        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH   (0%, 5%]             0%                0.8141593   0.3894920   1.701846
6 months    ki1017093-NIH-Birth        BANGLADESH   >5%                  0%                0.7704918   0.3611877   1.643626
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             0%                1.1587502   0.8205413   1.636361
6 months    ki1017093c-NIH-Crypto      BANGLADESH   >5%                  0%                1.1636611   0.7903312   1.713341
6 months    ki1112895-Guatemala BSC    GUATEMALA    0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA    (0%, 5%]             0%                0.9839286   0.4862853   1.990838
6 months    ki1112895-Guatemala BSC    GUATEMALA    >5%                  0%                1.1418750   0.6111193   2.133591
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                1.0194774   0.7700380   1.349718
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                1.1322729   0.8209739   1.561611
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             0%                1.1713996   0.8076847   1.698902
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  0%                1.2353146   0.8002814   1.906832
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                0.9011176   0.7305516   1.111507
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                1.0676507   0.8526787   1.336820


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH   0%                   NA                -0.0873016   -0.2844683   0.1098651
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   NA                -0.0063249   -0.0479071   0.0352572
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.0039340   -0.0293309   0.0214629
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0250086   -0.1633533   0.1133361
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                 0.0369952   -0.1329422   0.2069327
6 months    ki1017093-NIH-Birth        BANGLADESH   0%                   NA                -0.0651769   -0.3002043   0.1698505
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                 0.0255257   -0.0257143   0.0767657
6 months    ki1112895-Guatemala BSC    GUATEMALA    0%                   NA                 0.0251413   -0.1301396   0.1804222
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.0077572   -0.0587457   0.0742600
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                 0.0338821   -0.0303699   0.0981341
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0340329   -0.1213205   0.0532548


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH   0%                   NA                -0.4583333   -1.9610478   0.2817623
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   NA                -0.0398603   -0.3378277   0.1917423
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.0285118   -0.2303357   0.1402050
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0823795   -0.6480876   0.2891486
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                 0.0862466   -0.4078818   0.4069493
6 months    ki1017093-NIH-Birth        BANGLADESH   0%                   NA                -0.2430556   -1.5158419   0.3858171
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                 0.1216725   -0.1588742   0.3343030
6 months    ki1112895-Guatemala BSC    GUATEMALA    0%                   NA                 0.0835249   -0.6090216   0.4779892
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.0306919   -0.2715110   0.2610696
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                 0.1319349   -0.1577203   0.3491199
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0848946   -0.3262390   0.1125309

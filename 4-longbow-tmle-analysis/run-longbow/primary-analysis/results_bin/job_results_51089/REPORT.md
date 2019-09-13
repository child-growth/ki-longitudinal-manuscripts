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
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
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

agecat      studyid                    country                        perdiar24    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 0       16    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 1        6    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      126    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       20    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                0       68    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                1       21    257
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 0       97    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 1       11    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       71    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1       10    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0%                 0       10    206
Birth       ki0047075b-MAL-ED          INDIA                          0%                 1        2    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      130    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       26    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%                0       33    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%                1        5    206
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 0       12    173
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 1        2    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0       96    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        7    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                0       47    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                1        9    173
Birth       ki0047075b-MAL-ED          PERU                           0%                 0       25    287
Birth       ki0047075b-MAL-ED          PERU                           0%                 1        2    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       95    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           1       14    287
Birth       ki0047075b-MAL-ED          PERU                           >5%                0      133    287
Birth       ki0047075b-MAL-ED          PERU                           >5%                1       18    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       86    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        9    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      136    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       18    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        6    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        2    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       75    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       15    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       24    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        1    123
Birth       ki1000109-EE               PAKISTAN                       0%                 0        0      2
Birth       ki1000109-EE               PAKISTAN                       0%                 1        0      2
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           0        1      2
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           1        1      2
Birth       ki1000109-EE               PAKISTAN                       >5%                0        0      2
Birth       ki1000109-EE               PAKISTAN                       >5%                1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       0%                 0        0      6
Birth       ki1000109-ResPak           PAKISTAN                       0%                 1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0        0      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%                0        4      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%                1        0      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 0        4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0        7     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                0       14     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                1        0     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        2     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0        9     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        1     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0        9     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        2     27
Birth       ki1114097-CMIN             BANGLADESH                     0%                 0        6     13
Birth       ki1114097-CMIN             BANGLADESH                     0%                 1        5     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0        0     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%                0        1     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%                1        1     13
Birth       ki1114097-CMIN             BRAZIL                         0%                 0        1    115
Birth       ki1114097-CMIN             BRAZIL                         0%                 1        0    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       62    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        4    115
Birth       ki1114097-CMIN             BRAZIL                         >5%                0       47    115
Birth       ki1114097-CMIN             BRAZIL                         >5%                1        1    115
Birth       ki1114097-CMIN             PERU                           0%                 0        1     10
Birth       ki1114097-CMIN             PERU                           0%                 1        0     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]           0        8     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]           1        0     10
Birth       ki1114097-CMIN             PERU                           >5%                0        1     10
Birth       ki1114097-CMIN             PERU                           >5%                1        0     10
Birth       ki1114097-CONTENT          PERU                           0%                 0        0      2
Birth       ki1114097-CONTENT          PERU                           0%                 1        0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           0        1      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           1        0      2
Birth       ki1114097-CONTENT          PERU                           >5%                0        1      2
Birth       ki1114097-CONTENT          PERU                           >5%                1        0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      138    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       57    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0      380    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      167    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                0       57    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       23    822
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0        5    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        1    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      119    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       23    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       72    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1       21    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      103    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        3    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       98    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        3    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                 0        3    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        0    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      155    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       36    236
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      132    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       45    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        9    247
6 months    ki1000109-EE               PAKISTAN                       0%                 0      129    372
6 months    ki1000109-EE               PAKISTAN                       0%                 1      142    372
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0       41    372
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1       39    372
6 months    ki1000109-EE               PAKISTAN                       >5%                0        9    372
6 months    ki1000109-EE               PAKISTAN                       >5%                1       12    372
6 months    ki1000109-ResPak           PAKISTAN                       0%                 0        7    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                 1        4    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       42    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1       28    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                0      103    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                1       51    235
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 0        9    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 1        3    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      340    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       61    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                0      140    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                1       30    583
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
6 months    ki1114097-CMIN             BRAZIL                         0%                 0        1    108
6 months    ki1114097-CMIN             BRAZIL                         0%                 1        0    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       58    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        2    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                0       39    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                1        8    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       21    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        4    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      310    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       22    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      425    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                1       47    829
6 months    ki1114097-CMIN             PERU                           0%                 0       32    637
6 months    ki1114097-CMIN             PERU                           0%                 1        2    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]           0      284    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]           1       17    637
6 months    ki1114097-CMIN             PERU                           >5%                0      278    637
6 months    ki1114097-CMIN             PERU                           >5%                1       24    637
6 months    ki1114097-CONTENT          PERU                           0%                 0        4    215
6 months    ki1114097-CONTENT          PERU                           0%                 1        2    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      129    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1       13    215
6 months    ki1114097-CONTENT          PERU                           >5%                0       63    215
6 months    ki1114097-CONTENT          PERU                           >5%                1        4    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      944   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      299   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     2338   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      781   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      329   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      140   4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0        4    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        2    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0       74    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       56    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       36    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1       40    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0       74    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       87    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        4    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                 0        2    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        1    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      105    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       78    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       25    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                1       16    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       10    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        2    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      112    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       28    228
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       44    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1      112    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       16    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1       36    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0        4    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      128    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1      151    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0       59    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1       86    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0        5    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        4    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      268    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1      126    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      114    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1       60    577
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       15    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 1       15    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      135    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       47    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      202    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                1      124    538
24 months   ki1114097-CMIN             PERU                           0%                 0       26    426
24 months   ki1114097-CMIN             PERU                           0%                 1       12    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]           0      143    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]           1       50    426
24 months   ki1114097-CMIN             PERU                           >5%                0      121    426
24 months   ki1114097-CMIN             PERU                           >5%                1       74    426
24 months   ki1114097-CONTENT          PERU                           0%                 0        3    164
24 months   ki1114097-CONTENT          PERU                           0%                 1        1    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0       94    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1       14    164
24 months   ki1114097-CONTENT          PERU                           >5%                0       46    164
24 months   ki1114097-CONTENT          PERU                           >5%                1        6    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      767   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      444   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     1891   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1     1204   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      230   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      216   4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/17e837f4-3914-4f1c-90ea-62ceee15cc73/2dfea810-b5e2-4460-8400-4b32c383ca9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/17e837f4-3914-4f1c-90ea-62ceee15cc73/2dfea810-b5e2-4460-8400-4b32c383ca9e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/17e837f4-3914-4f1c-90ea-62ceee15cc73/2dfea810-b5e2-4460-8400-4b32c383ca9e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/17e837f4-3914-4f1c-90ea-62ceee15cc73/2dfea810-b5e2-4460-8400-4b32c383ca9e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH      0%                   NA                0.2727273   0.0862627   0.4591918
Birth       ki0047075b-MAL-ED          BANGLADESH      (0%, 5%]             NA                0.1369863   0.0811051   0.1928675
Birth       ki0047075b-MAL-ED          BANGLADESH      >5%                  NA                0.2359551   0.1475710   0.3243391
Birth       kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2844441   0.2436859   0.3252022
Birth       kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.3037209   0.2670953   0.3403465
Birth       kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.3131555   0.2684949   0.3578161
6 months    ki1000109-EE               PAKISTAN        0%                   NA                0.5239852   0.4644440   0.5835265
6 months    ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.4875000   0.3778214   0.5971786
6 months    ki1000109-EE               PAKISTAN        >5%                  NA                0.5714286   0.3594873   0.7833698
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.3998185   0.2279790   0.5716579
6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.3775865   0.2555935   0.4995795
6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.4424742   0.3713431   0.5136053
6 months    ki1017093-NIH-Birth        BANGLADESH      0%                   NA                0.3333333   0.0945517   0.5721150
6 months    ki1017093-NIH-Birth        BANGLADESH      (0%, 5%]             NA                0.2713864   0.2240064   0.3187665
6 months    ki1017093-NIH-Birth        BANGLADESH      >5%                  NA                0.2568306   0.1934736   0.3201876
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.1848440   0.1265017   0.2431864
6 months    ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.2140406   0.1750982   0.2529830
6 months    ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.2164937   0.1623544   0.2706331
6 months    ki1112895-Guatemala BSC    GUATEMALA       0%                   NA                0.2758621   0.1129200   0.4388041
6 months    ki1112895-Guatemala BSC    GUATEMALA       (0%, 5%]             NA                0.2714286   0.1670791   0.3757781
6 months    ki1112895-Guatemala BSC    GUATEMALA       >5%                  NA                0.3150000   0.2505146   0.3794854
6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2421467   0.2134498   0.2708437
6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.2517582   0.2352484   0.2682679
6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.2818161   0.2337392   0.3298931
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.2185503   0.1476300   0.2894707
24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.2620454   0.2106900   0.3134007
24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.2858730   0.2048693   0.3668766
24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.5090087   0.3270085   0.6910089
24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.2784230   0.2118021   0.3450440
24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.3795802   0.3263017   0.4328587
24 months   ki1114097-CMIN             PERU            0%                   NA                0.3304754   0.1793527   0.4815981
24 months   ki1114097-CMIN             PERU            (0%, 5%]             NA                0.2591415   0.1969592   0.3213238
24 months   ki1114097-CMIN             PERU            >5%                  NA                0.3817042   0.3130508   0.4503576
24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.3748623   0.3440516   0.4056730
24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.3874102   0.3669276   0.4078928
24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.4721528   0.4212310   0.5230747


### Parameter: E(Y)


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.1828794   0.1355257   0.2302330
Birth       kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki1000109-EE               PAKISTAN        NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1112895-Guatemala BSC    GUATEMALA       NA                   NA                0.3010033   0.2489243   0.3530824
6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.3457249   0.3054989   0.3859509
24 months   ki1114097-CMIN             PERU            NA                   NA                0.3192488   0.2749275   0.3635701
24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH      (0%, 5%]             0%                0.5022831   0.2265603   1.113559
Birth       ki0047075b-MAL-ED          BANGLADESH      >5%                  0%                0.8651685   0.3967612   1.886567
Birth       kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.0677702   0.9668121   1.179271
Birth       kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.1009387   0.9692973   1.250458
6 months    ki1000109-EE               PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN        (0%, 5%]             0%                0.9303697   0.7230893   1.197069
6 months    ki1000109-EE               PAKISTAN        >5%                  0%                1.0905433   0.7399020   1.607354
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                0.9443949   0.5515128   1.617155
6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                1.1066877   0.6994861   1.750939
6 months    ki1017093-NIH-Birth        BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH      (0%, 5%]             0%                0.8141593   0.3894920   1.701846
6 months    ki1017093-NIH-Birth        BANGLADESH      >5%                  0%                0.7704918   0.3611877   1.643626
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                1.1579525   0.8157905   1.643625
6 months    ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                1.1712237   0.7936214   1.728488
6 months    ki1112895-Guatemala BSC    GUATEMALA       0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA       (0%, 5%]             0%                0.9839286   0.4862853   1.990838
6 months    ki1112895-Guatemala BSC    GUATEMALA       >5%                  0%                1.1418750   0.6111193   2.133591
6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.0396928   0.9105974   1.187090
6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.1638239   0.9456595   1.432319
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                1.1990161   0.8280310   1.736215
24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                1.3080417   0.8557586   1.999364
24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             0%                0.5469907   0.3562968   0.839746
24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  0%                0.7457243   0.5079869   1.094723
24 months   ki1114097-CMIN             PERU            0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN             PERU            (0%, 5%]             0%                0.7841475   0.4679999   1.313862
24 months   ki1114097-CMIN             PERU            >5%                  0%                1.1550154   0.7067383   1.887630
24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.0334733   0.9386375   1.137891
24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.2595366   1.1057664   1.434690


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH      0%                   NA                -0.0898479   -0.2660827   0.0863870
Birth       kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0160426   -0.0058156   0.0379007
6 months    ki1000109-EE               PAKISTAN        0%                   NA                -0.0051680   -0.0362296   0.0258935
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0291289   -0.1418792   0.2001370
6 months    ki1017093-NIH-Birth        BANGLADESH      0%                   NA                -0.0651769   -0.3002043   0.1698505
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.0249462   -0.0273860   0.0772784
6 months    ki1112895-Guatemala BSC    GUATEMALA       0%                   NA                 0.0251413   -0.1301396   0.1804222
6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0103890   -0.0133795   0.0341575
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.0382590   -0.0241350   0.1006530
24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.1632838   -0.3397836   0.0132160
24 months   ki1114097-CMIN             PERU            0%                   NA                -0.0112266   -0.1554882   0.1330350
24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0173936   -0.0091033   0.0438904


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH      0%                   NA                -0.4912959   -1.8404579    0.2170405
Birth       kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0533886   -0.0221597    0.1233531
6 months    ki1000109-EE               PAKISTAN        0%                   NA                -0.0099612   -0.0716512    0.0481776
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0679079   -0.4281528    0.3916647
6 months    ki1017093-NIH-Birth        BANGLADESH      0%                   NA                -0.2430556   -1.5158419    0.3858171
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.1189101   -0.1685657    0.3356648
6 months    ki1112895-Guatemala BSC    GUATEMALA       0%                   NA                 0.0835249   -0.6090216    0.4779892
6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0411387   -0.0580157    0.1310006
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.1489782   -0.1317191    0.3600549
24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.4722939   -1.0847544   -0.0397625
24 months   ki1114097-CMIN             PERU            0%                   NA                -0.0351657   -0.6017413    0.3309981
24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0443424   -0.0255868    0.1095034

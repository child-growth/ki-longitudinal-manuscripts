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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        perdiar24    wasted   n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                0       17    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                1        1    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          0      117    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          1       25    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%               0       67    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%               1       14    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                0      104    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                1        1    183
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          0       71    183
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          1        5    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               0        2    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               1        0    183
Birth       ki0047075b-MAL-ED          INDIA                          0%                0       10    203
Birth       ki0047075b-MAL-ED          INDIA                          0%                1        2    203
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]          0      132    203
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]          1       21    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%               0       28    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%               1       10    203
Birth       ki0047075b-MAL-ED          NEPAL                          0%                0       10    168
Birth       ki0047075b-MAL-ED          NEPAL                          0%                1        3    168
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          0       90    168
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          1       11    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               0       48    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               1        6    168
Birth       ki0047075b-MAL-ED          PERU                           0%                0       26    279
Birth       ki0047075b-MAL-ED          PERU                           0%                1        0    279
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]          0      106    279
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]          1        1    279
Birth       ki0047075b-MAL-ED          PERU                           >5%               0      141    279
Birth       ki0047075b-MAL-ED          PERU                           >5%               1        5    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                0       88    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                1        7    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          0      143    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        9    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               0        3    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1        0    250
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        8    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        0    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       85    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        1    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       23    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        1    118
Birth       ki1000109-EE               PAKISTAN                       0%                0        0      1
Birth       ki1000109-EE               PAKISTAN                       0%                1        0      1
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          0        1      1
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          1        0      1
Birth       ki1000109-EE               PAKISTAN                       >5%               0        0      1
Birth       ki1000109-EE               PAKISTAN                       >5%               1        0      1
Birth       ki1000109-ResPak           PAKISTAN                       0%                0        0      5
Birth       ki1000109-ResPak           PAKISTAN                       0%                1        0      5
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          0        1      5
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          1        0      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%               0        4      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%               1        0      5
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                0        3     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                1        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          0        7     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          1        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%               0        9     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%               1        5     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                0        3     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                1        1     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          0       10     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          1        0     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               0        7     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               1        2     23
Birth       ki1114097-CMIN             BANGLADESH                     0%                0        4      8
Birth       ki1114097-CMIN             BANGLADESH                     0%                1        2      8
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0        0      8
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%               0        1      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%               1        1      8
Birth       ki1114097-CMIN             BRAZIL                         0%                0        1    111
Birth       ki1114097-CMIN             BRAZIL                         0%                1        0    111
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]          0       58    111
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]          1        5    111
Birth       ki1114097-CMIN             BRAZIL                         >5%               0       44    111
Birth       ki1114097-CMIN             BRAZIL                         >5%               1        3    111
Birth       ki1114097-CMIN             PERU                           0%                0        1     10
Birth       ki1114097-CMIN             PERU                           0%                1        0     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          0        8     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          1        0     10
Birth       ki1114097-CMIN             PERU                           >5%               0        1     10
Birth       ki1114097-CMIN             PERU                           >5%               1        0     10
Birth       ki1114097-CONTENT          PERU                           0%                0        0      2
Birth       ki1114097-CONTENT          PERU                           0%                1        0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          0        1      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1        0      2
Birth       ki1114097-CONTENT          PERU                           >5%               0        1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1        0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                0      154    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                1        8    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          0      432    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          1       25    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%               0       61    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%               1        3    683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                1        0    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          0      136    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          1        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%               0       91    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%               1        2    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                0      106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          0      100    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          1        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               0        2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                0        3    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                1        0    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]          0      178    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]          1       13    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%               0       37    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%               1        5    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                0       13    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          0      140    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          1        3    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%               0       79    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%               1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0%                0        7    273
6 months    ki0047075b-MAL-ED          PERU                           0%                1        0    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]          0      109    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]          1        0    273
6 months    ki0047075b-MAL-ED          PERU                           >5%               0      157    273
6 months    ki0047075b-MAL-ED          PERU                           >5%               1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                0       76    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                1        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          0      169    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        5    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1        0    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        8    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        1    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0      177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       61    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        0    247
6 months    ki1000109-EE               PAKISTAN                       0%                0      237    376
6 months    ki1000109-EE               PAKISTAN                       0%                1       38    376
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]          0       71    376
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]          1        9    376
6 months    ki1000109-EE               PAKISTAN                       >5%               0       19    376
6 months    ki1000109-EE               PAKISTAN                       >5%               1        2    376
6 months    ki1000109-ResPak           PAKISTAN                       0%                0        7    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                1        4    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]          0       60    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]          1       10    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%               0      142    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%               1       12    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                0       61    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                1       13    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          0       38    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          1        8    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%               0      212    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%               1       48    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                0       15    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                1        0    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          0      316    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          1       22    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%               0      171    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%               1       12    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                0       12    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                1        0    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          0      382    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          1       18    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%               0      164    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%               1        6    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                0      130    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                1        4    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          0      379    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          1        7    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%               0      185    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%               1       10    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                0       28    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                1        1    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]          0       70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]          1        0    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%               0      197    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%               1        3    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                0        2    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                1        0    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0      100    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]          1       11    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%               0      120    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%               1       10    243
6 months    ki1114097-CMIN             BRAZIL                         0%                0        1    108
6 months    ki1114097-CMIN             BRAZIL                         0%                1        0    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]          0       60    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]          1        0    108
6 months    ki1114097-CMIN             BRAZIL                         >5%               0       46    108
6 months    ki1114097-CMIN             BRAZIL                         >5%               1        1    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                0       23    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                1        2    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]          0      320    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]          1       12    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%               0      454    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%               1       19    830
6 months    ki1114097-CMIN             PERU                           0%                0       34    636
6 months    ki1114097-CMIN             PERU                           0%                1        0    636
6 months    ki1114097-CMIN             PERU                           (0%, 5%]          0      297    636
6 months    ki1114097-CMIN             PERU                           (0%, 5%]          1        4    636
6 months    ki1114097-CMIN             PERU                           >5%               0      295    636
6 months    ki1114097-CMIN             PERU                           >5%               1        6    636
6 months    ki1114097-CONTENT          PERU                           0%                0        6    215
6 months    ki1114097-CONTENT          PERU                           0%                1        0    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]          0      142    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]          1        0    215
6 months    ki1114097-CONTENT          PERU                           >5%               0       67    215
6 months    ki1114097-CONTENT          PERU                           >5%               1        0    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                0     1176   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                1       67   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          0     2946   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          1      173   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%               0      436   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%               1       35   4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                0        5    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                1        1    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          0      114    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          1       16    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%               0       72    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%               1        4    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                0       75    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                1        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          0       89    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          1        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               0        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                0        3    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                1        0    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]          0      160    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]          1       23    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%               0       37    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%               1        4    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%                0       12    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                1        0    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          0      138    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          1        2    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%               0       73    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%               1        3    228
24 months   ki0047075b-MAL-ED          PERU                           0%                0        1    201
24 months   ki0047075b-MAL-ED          PERU                           0%                1        0    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]          0       82    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]          1        2    201
24 months   ki0047075b-MAL-ED          PERU                           >5%               0      115    201
24 months   ki0047075b-MAL-ED          PERU                           >5%               1        1    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                0       71    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          0      165    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        6    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0      154    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        2    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       50    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        2    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                0        4    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                1        1    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          0      239    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          1       39    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%               0      132    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%               1       13    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                0        9    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                1        0    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          0      347    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          1       48    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%               0      157    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%               1       17    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                0      112    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                1       11    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          0      252    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          1       24    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%               0      105    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%               1       10    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                0        3    243
24 months   ki1114097-CMIN             BANGLADESH                     0%                1        0    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0       99    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]          1       15    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%               0      116    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%               1       10    243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                0       30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                1        0    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]          0      174    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]          1        8    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%               0      311    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%               1       15    538
24 months   ki1114097-CMIN             PERU                           0%                0       38    426
24 months   ki1114097-CMIN             PERU                           0%                1        0    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]          0      192    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]          1        1    426
24 months   ki1114097-CMIN             PERU                           >5%               0      194    426
24 months   ki1114097-CMIN             PERU                           >5%               1        1    426
24 months   ki1114097-CONTENT          PERU                           0%                0        4    164
24 months   ki1114097-CONTENT          PERU                           0%                1        0    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]          0      108    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]          1        0    164
24 months   ki1114097-CONTENT          PERU                           >5%               0       52    164
24 months   ki1114097-CONTENT          PERU                           >5%               1        0    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                0      951   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                1      256   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          0     2509   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          1      576   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%               0      355   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%               1       88   4735


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/0d4c0831-9882-41ed-bf4e-e6875b524495/78d29a10-9b4f-4d64-ad09-7865105c4b5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d4c0831-9882-41ed-bf4e-e6875b524495/78d29a10-9b4f-4d64-ad09-7865105c4b5e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d4c0831-9882-41ed-bf4e-e6875b524495/78d29a10-9b4f-4d64-ad09-7865105c4b5e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d4c0831-9882-41ed-bf4e-e6875b524495/78d29a10-9b4f-4d64-ad09-7865105c4b5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                0.1756757   0.0888578   0.2624936
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.1739130   0.0642348   0.2835912
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  NA                0.1846154   0.1373929   0.2318379
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.0541181   0.0349498   0.0732865
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0555701   0.0456749   0.0654653
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.0751806   0.0391804   0.1111808
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.0889021   0.0390714   0.1387328
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.0886119   0.0550513   0.1221725
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.0830116   0.0332729   0.1327503
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.2114496   0.1832583   0.2396408
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.1870878   0.1723424   0.2018332
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.1933672   0.1436233   0.2431110


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1815789   0.1427684   0.2203895
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             0%                0.9899666   0.4442801   2.205892
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  0%                1.0508876   0.6024010   1.833272
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                1.0268297   0.6895204   1.529149
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                1.3891945   0.7692141   2.508874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.9967358   0.5067420   1.960529
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  0%                0.9337414   0.4105423   2.123711
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                0.8847869   0.7604231   1.029490
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                0.9144837   0.6827345   1.224898


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                 0.0059033   -0.0722505   0.0840570
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.0027824   -0.0132164   0.0187811
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.0013535   -0.0447895   0.0420825
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0171518   -0.0404683   0.0061648


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                 0.0325108   -0.5095190   0.3799115
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.0488987   -0.2795869   0.2930580
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.0154595   -0.6552395   0.3770339
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0882757   -0.2144795   0.0248134

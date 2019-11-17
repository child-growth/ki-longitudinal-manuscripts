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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
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

agecat        studyid                    country                        perdiar24    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       91    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        3    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   0      114    218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   1        1    218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    218
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                   0        4    241
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                   1        1    241
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      178    241
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       15    241
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  0       38    241
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  1        5    241
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0       15    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        4    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           0%                   0       11    284
0-24 months   ki0047075b-MAL-ED          PERU                           0%                   1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      112    284
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        1    284
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                  0      160    284
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                  1        0    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       90    275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        1    275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      180    275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
0-24 months   ki1000109-EE               PAKISTAN                       0%                   0      232    377
0-24 months   ki1000109-EE               PAKISTAN                       0%                   1       27    377
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             0      112    377
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    377
0-24 months   ki1000109-EE               PAKISTAN                       >5%                  0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       >5%                  1        0    377
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       56    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       15    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0       37    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        9    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0      217    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1       41    375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0       10    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0      302    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1       36    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      175    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  1       11    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      414    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1       12    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      193    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        3    641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0      130    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        4    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      192    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1       10    730
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0       12    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0       63    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0      177    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  1        3    256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0      133   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   1       23   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0      873   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             1      105   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0      463   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  1       72   1669
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                   0        3    257
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                   1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      106    257
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1       12    257
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  0      128    257
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  1        8    257
0-24 months   ki1114097-CONTENT          PERU                           0%                   0        6    215
0-24 months   ki1114097-CONTENT          PERU                           0%                   1        0    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                  0       67    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                  1        0    215
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0      178   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1       13   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0     4174   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1      353   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      503   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       60   5281
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      140    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1        6    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       93    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        1    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                   0      115    218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                   1        0    218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    218
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                   0        4    240
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                   1        1    240
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      179    240
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       13    240
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                  0       38    240
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                  1        5    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0       13    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                   1        2    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      139    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        5    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238
0-6 months    ki0047075b-MAL-ED          PERU                           0%                   0       11    284
0-6 months    ki0047075b-MAL-ED          PERU                           0%                   1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      113    284
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                  0      160    284
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                  1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       91    274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        0    274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      178    274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        2    274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    274
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
0-6 months    ki1000109-EE               PAKISTAN                       0%                   0      234    371
0-6 months    ki1000109-EE               PAKISTAN                       0%                   1       19    371
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             0      112    371
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    371
0-6 months    ki1000109-EE               PAKISTAN                       >5%                  0        0    371
0-6 months    ki1000109-EE               PAKISTAN                       >5%                  1        0    371
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0       45    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1        5    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      113    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  1        6    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      416    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1        8    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      189    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        6    638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0       12    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      125    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      108    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1        5    250
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   0        3    234
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      101    234
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1        4    234
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  0      121    234
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  1        5    234
0-6 months    ki1114097-CONTENT          PERU                           0%                   0        6    215
0-6 months    ki1114097-CONTENT          PERU                           0%                   1        0    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                  0       67    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                  1        0    215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       91    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        3    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   0      114    218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   1        1    218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    218
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   0        4    241
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   1        1    241
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      178    241
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       15    241
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  0       38    241
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  1        5    241
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0       15    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        4    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   0       11    284
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      112    284
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        1    284
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  0      160    284
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  1        0    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       90    275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        1    275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      180    275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    275
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
6-24 months   ki1000109-EE               PAKISTAN                       0%                   0      232    377
6-24 months   ki1000109-EE               PAKISTAN                       0%                   1       27    377
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             0      112    377
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    377
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  1        0    377
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       56    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       15    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0       37    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        9    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0      217    375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1       41    375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0       10    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0      302    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1       36    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      175    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  1       11    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      414    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1       12    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      193    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        3    641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0      130    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        4    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      192    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1       10    730
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0       12    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0       63    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0      177    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  1        3    256
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0      133   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   1       23   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0      873   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             1      105   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0      463   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  1       72   1669
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   0        3    257
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      106    257
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1       12    257
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  0      128    257
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  1        8    257
6-24 months   ki1114097-CONTENT          PERU                           0%                   0        6    215
6-24 months   ki1114097-CONTENT          PERU                           0%                   1        0    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                  0       67    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                  1        0    215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0      178   5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1       13   5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0     4174   5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1      353   5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      503   5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       60   5281


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/498295a7-3a13-4271-988f-7440ed54b01c/3fa5ccaa-8755-4f11-b3d0-eef97cc3ead3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/498295a7-3a13-4271-988f-7440ed54b01c/3fa5ccaa-8755-4f11-b3d0-eef97cc3ead3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/498295a7-3a13-4271-988f-7440ed54b01c/3fa5ccaa-8755-4f11-b3d0-eef97cc3ead3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/498295a7-3a13-4271-988f-7440ed54b01c/3fa5ccaa-8755-4f11-b3d0-eef97cc3ead3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.2112676   0.1161896   0.3063456
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1956522   0.0808597   0.3104446
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1589147   0.1142443   0.2035852
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1402816   0.0621573   0.2184059
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1064695   0.0792645   0.1336744
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1307168   0.0826850   0.1787487
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0690877   0.0264131   0.1117622
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0781278   0.0690569   0.0871988
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.1052961   0.0780104   0.1325819
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.2112676   0.1161896   0.3063456
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1956522   0.0808597   0.3104446
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1589147   0.1142443   0.2035852
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1429844   0.0644310   0.2215379
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1063321   0.0785840   0.1340801
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1343455   0.0836818   0.1850092
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0712828   0.0282006   0.1143650
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0781262   0.0690510   0.0872013
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.1043843   0.0772169   0.1315518


### Parameter: E(Y)


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791


### Parameter: RR


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.9260870   0.4420972   1.939929
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                0.7521964   0.4424762   1.278711
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.7589695   0.4291900   1.342144
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9318173   0.4534731   1.914741
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                1.1308505   0.6065437   2.108377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.5240944   0.7759942   2.993404
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.9260870   0.4420972   1.939929
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                0.7521964   0.4424762   1.278711
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.7436621   0.4195693   1.318098
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9395813   0.4565252   1.933766
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                1.0960029   0.5954690   2.017271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.4643689   0.7546463   2.841565


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0379343   -0.1221275   0.0462590
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0204494   -0.0953620   0.0544633
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0115789   -0.0300833   0.0532411
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0379343   -0.1221275   0.0462590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0231522   -0.0991631   0.0528588
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0093837   -0.0326938   0.0514612


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.2188516   -0.8138542   0.1809710
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.1706501   -1.0011867   0.3151956
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.1435398   -0.5661662   0.5316436
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.2188516   -0.8138542   0.1809710
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.1932049   -1.0372805   0.3011577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.1163275   -0.5952156   0.5104880

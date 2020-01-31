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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        perdiar24    pers_wast   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       91    248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        3    248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   0      114    218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   1        1    218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    218  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                   0        4    241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                   1        1    241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      178    241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       15    241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  0       38    241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  1        5    241  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0       15    238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   1        0    238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        4    238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           0%                   0       11    284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           0%                   1        0    284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      112    284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        1    284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                  0      160    284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                  1        0    284  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       90    275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        1    275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      180    275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    275  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       0%                   0      232    377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       0%                   1       27    377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             0      112    377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       >5%                  0        0    377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       >5%                  1        0    377  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       56    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       15    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0       37    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        9    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0      217    375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1       41    375  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0       10    534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0      302    534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1       36    534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      175    534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  1       11    534  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      414    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1       12    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      193    641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        3    641  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0      130    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        4    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      192    730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1       10    730  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0       12    256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   1        0    256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0       63    256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             1        1    256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0      177    256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  1        3    256  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0      133   1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   1       23   1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0      873   1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             1      105   1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0      463   1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  1       72   1669  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                   0        3    257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                   1        0    257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      106    257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1       12    257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  0      128    257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  1        8    257  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           0%                   0        6    215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           0%                   1        0    215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           >5%                  0       67    215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           >5%                  1        0    215  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0      178   5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1       13   5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0     4174   5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1      353   5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      503   5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       60   5281  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      140    248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1        6    248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       93    248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        1    248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                   0      115    218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                   1        0    218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    218  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                   0        4    240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                   1        1    240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      179    240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       13    240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                  0       38    240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                  1        5    240  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0       13    238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                   1        2    238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      139    238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        5    238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           0%                   0       11    284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           0%                   1        0    284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      113    284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        0    284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                  0      160    284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                  1        0    284  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       91    274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        0    274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      178    274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        2    274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    274  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       0%                   0      234    371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       0%                   1       19    371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             0      112    371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       >5%                  0        0    371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       >5%                  1        0    371  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0        0    169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0       45    169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1        5    169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      113    169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  1        6    169  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      416    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1        8    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      189    638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        6    638  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0       12    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        0    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      125    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1        0    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      108    250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1        5    250  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   0        3    234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   1        0    234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      101    234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1        4    234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  0      121    234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  1        5    234  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           0%                   0        6    215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           0%                   1        0    215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           >5%                  0       67    215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           >5%                  1        0    215  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       91    248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        3    248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   0      114    218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   1        1    218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    218  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   0        4    241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   1        1    241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      178    241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       15    241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  0       38    241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  1        5    241  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0       15    238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   1        0    238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        4    238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   0       11    284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   1        0    284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      112    284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        1    284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  0      160    284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  1        0    284  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       90    275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        1    275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      180    275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    275  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       0%                   0      232    377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       0%                   1       27    377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             0      112    377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  0        0    377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  1        0    377  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       56    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       15    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0       37    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        9    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0      217    375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1       41    375  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0       10    534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0      302    534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1       36    534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      175    534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  1       11    534  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      414    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1       12    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      193    641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        3    641  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0      130    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        4    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      192    730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1       10    730  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0       12    256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   1        0    256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0       63    256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             1        1    256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0      177    256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  1        3    256  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0      133   1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   1       23   1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0      873   1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             1      105   1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0      463   1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  1       72   1669  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   0        3    257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   1        0    257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      106    257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1       12    257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  0      128    257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  1        8    257  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           0%                   0        6    215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           0%                   1        0    215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           >5%                  0       67    215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           >5%                  1        0    215  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0      178   5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1       13   5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0     4174   5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1      353   5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      503   5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       60   5281  pers_wast        


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
![](/tmp/fddf36e3-ac82-447b-b85c-2ee8ec7ade14/0bbaf31e-2e5e-4eac-be51-17bc2cab6ea0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fddf36e3-ac82-447b-b85c-2ee8ec7ade14/0bbaf31e-2e5e-4eac-be51-17bc2cab6ea0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fddf36e3-ac82-447b-b85c-2ee8ec7ade14/0bbaf31e-2e5e-4eac-be51-17bc2cab6ea0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fddf36e3-ac82-447b-b85c-2ee8ec7ade14/0bbaf31e-2e5e-4eac-be51-17bc2cab6ea0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.2112676   0.1161896   0.3063456
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1956522   0.0808597   0.3104446
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1589147   0.1142443   0.2035852
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1474359   0.0731023   0.2217695
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1073620   0.0793543   0.1353696
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1345794   0.0859142   0.1832447
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0680628   0.0258617   0.1102639
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0779766   0.0688972   0.0870560
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.1065719   0.0797292   0.1334147
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.2112676   0.1161896   0.3063456
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1956522   0.0808597   0.3104446
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1589147   0.1142443   0.2035852
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1474359   0.0731023   0.2217695
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1073620   0.0793543   0.1353696
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1345794   0.0859142   0.1832447
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0680628   0.0258617   0.1102639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0779766   0.0688972   0.0870560
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.1065719   0.0797292   0.1334147


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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.7281942   0.4296609   1.234152
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9127997   0.4665008   1.786070
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                1.1456560   0.6129120   2.141462
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.5657877   0.7982689   3.071260
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.9260870   0.4420972   1.939929
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                0.7521964   0.4424762   1.278711
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.7281942   0.4296609   1.234152
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9127997   0.4665008   1.786070
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                1.1456560   0.6129120   2.141462
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.5657877   0.7982689   3.071260


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0379343   -0.1221275   0.0462590
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0276037   -0.0993026   0.0440952
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0126037   -0.0286016   0.0538090
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0379343   -0.1221275   0.0462590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0276037   -0.0993026   0.0440952
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0126037   -0.0286016   0.0538090


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.2188516   -0.8138542   0.1809710
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.2303526   -1.0098927   0.2468417
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.1562446   -0.5466298   0.5396939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.2188516   -0.8138542   0.1809710
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.2303526   -1.0098927   0.2468417
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.1562446   -0.5466298   0.5396939

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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        perdiar24    ever_swasted   n_cell      n  outcome_variable 
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                      0       19    263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        1    263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      138    263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       10    263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       94    263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        1    263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                      0      128    233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                      1        2    233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       99    233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        2    233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                      0       12    246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                      1        1    246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      180    246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1       11    246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                     0       41    246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                     1        1    246  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                      0       17    239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                      1        0    239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      141    239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        2    239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                     0       78    239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                     1        1    239  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                      0       28    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                      1        0    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      112    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        1    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                     0      158    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                     1        3    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0      113    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        4    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      174    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        8    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    302  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       15    261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        1    261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      180    261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        3    261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       58    261  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        4    261  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                      0      212    377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                      1       48    377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]                0       99    377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]                1       18    377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                     0        0    377  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                     1        0    377  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       69    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       10    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       41    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        4    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      247    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1       26    397  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       43    599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      321    599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       33    599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      181    599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       21    599  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      417    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1       10    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      191    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        9    687  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      148    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        5    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      387    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       11    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      199    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        4    754  ever_swasted     
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       32    307  ever_swasted     
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    307  ever_swasted     
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       71    307  ever_swasted     
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    307  ever_swasted     
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      202    307  ever_swasted     
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        2    307  ever_swasted     
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      328   2348  ever_swasted     
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1        1   2348  ever_swasted     
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1275   2348  ever_swasted     
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1        8   2348  ever_swasted     
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      726   2348  ever_swasted     
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1       10   2348  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                      0        9    268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                      1        0    268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      102    268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       18    268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                     0      120    268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                     1       19    268  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                      0        6    215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                      1        0    215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                     0       67    215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                     1        0    215  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      207   5396  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1        9   5396  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     4415   5396  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      184   5396  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      542   5396  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       39   5396  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                      0       20    262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                      1        0    262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      141    262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1        6    262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       94    262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        1    262  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                      0      128    233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                      1        2    233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0      100    233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        1    233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                      0       12    244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                      1        1    244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      186    244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        5    244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                     0       39    244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                     1        1    244  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                      0       16    237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                      1        0    237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      141    237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        1    237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                     0       79    237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                     1        0    237  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                      0       28    302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                      1        0    302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      113    302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        0    302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                     0      160    302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                     1        1    302  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0      116    301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        1    301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      179    301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        2    301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    301  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       16    261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        0    261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      180    261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        3    261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       62    261  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        0    261  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                      0      244    375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                      1       14    375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]                0      111    375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]                1        6    375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                     0        0    375  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                     1        0    375  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       69    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1        0    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       36    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      236    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1        0    341  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                      0       43    581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      334    581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1        5    581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      195    581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     1        4    581  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      420    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1        3    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      197    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        3    683  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      151    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        1    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      396    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1        0    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      201    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        0    749  ever_swasted     
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       29    284  ever_swasted     
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    284  ever_swasted     
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       65    284  ever_swasted     
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    284  ever_swasted     
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      190    284  ever_swasted     
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        0    284  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                      0        9    267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                      1        0    267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      115    267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1        4    267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                     0      134    267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                     1        5    267  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                      0        6    215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                      1        0    215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                     0       67    215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                     1        0    215  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      170   4957  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      1        1   4957  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     4237   4957  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1       17   4957  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      529   4957  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1        3   4957  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                      0        5    240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        1    240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      138    240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1        4    240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       92    240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        0    240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                      0      104    207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                      1        0    207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0      100    207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        1    207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                      0        3    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                      1        0    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      184    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        6    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                     0       42    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                     1        0    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                      0       14    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                      1        0    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      142    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        1    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                     0       77    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                     1        1    235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                      0        6    270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                      1        0    270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      106    270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        1    270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                     0      155    270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                     1        2    270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       76    259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        3    259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      171    259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        7    259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        2    259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    259  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        7    245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        1    245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      176    245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        0    245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       57    245  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        4    245  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0%                      0      219    374  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0%                      1       37    374  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]                0      104    374  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]                1       14    374  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                     0        0    374  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                     1        0    374  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       64    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       15    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       41    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        6    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      246    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1       30    402  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       15    542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      312    542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       31    542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      167    542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       17    542  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       10    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      410    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1        7    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      182    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        6    615  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      130    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        4    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      383    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       11    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      197    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        5    730  ever_swasted     
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       22    277  ever_swasted     
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    277  ever_swasted     
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       68    277  ever_swasted     
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    277  ever_swasted     
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      185    277  ever_swasted     
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        2    277  ever_swasted     
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      336   2450  ever_swasted     
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1       21   2450  ever_swasted     
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1266   2450  ever_swasted     
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1       58   2450  ever_swasted     
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      726   2450  ever_swasted     
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1       43   2450  ever_swasted     
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                      0        3    252  ever_swasted     
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                      1        0    252  ever_swasted     
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      101    252  ever_swasted     
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       15    252  ever_swasted     
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                     0      119    252  ever_swasted     
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                     1       14    252  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           0%                      0        6    215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           0%                      1        0    215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           >5%                     0       67    215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           >5%                     1        0    215  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      202   5430  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1        9   5430  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     4440   5430  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      189   5430  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      549   5430  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       41   5430  ever_swasted     


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/de93432b-7e76-481e-8d9b-9dfa6fa0eac2/1362b261-132c-4a5f-abe2-2348b56e8d04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de93432b-7e76-481e-8d9b-9dfa6fa0eac2/1362b261-132c-4a5f-abe2-2348b56e8d04/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de93432b-7e76-481e-8d9b-9dfa6fa0eac2/1362b261-132c-4a5f-abe2-2348b56e8d04/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de93432b-7e76-481e-8d9b-9dfa6fa0eac2/1362b261-132c-4a5f-abe2-2348b56e8d04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0416667   0.0043929   0.0789404
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0400087   0.0340677   0.0459497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.0671256   0.0448874   0.0893639
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.1898734   0.1032802   0.2764666
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1276596   0.0321362   0.2231830
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1086957   0.0719291   0.1454623
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.0588235   0.0235949   0.0940521
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.0438066   0.0253066   0.0623067
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.0559168   0.0327664   0.0790671
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0426540   0.0079861   0.0773220
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0408296   0.0347616   0.0468975
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.0694915   0.0479472   0.0910359


### Parameter: E(Y)


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0429948   0.0372768   0.0487128
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.0497959   0.0341610   0.0654308
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0440147   0.0381801   0.0498493


### Parameter: RR


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                0.9602087   0.3851919   2.393614
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.6110155   0.6279244   4.133254
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6723404   0.2799107   1.614949
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                0.5724638   0.3244539   1.010050
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.7447130   0.3561830   1.557058
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9505852   0.6105530   1.479990
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                0.9572262   0.4162528   2.201263
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.6291902   0.6884811   3.855241


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0013281   -0.0350063   0.0376626
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0630077   -0.1379238   0.0119083
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0090276   -0.0368977   0.0188424
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0013607   -0.0325890   0.0353104


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0308908   -1.3187582    0.5949674
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.4966493   -1.2090286   -0.0140019
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.1812922   -0.8787224    0.2572340
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0309148   -1.1483547    0.5628626

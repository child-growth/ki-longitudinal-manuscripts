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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      193     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        8     201  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0      38  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0      38  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       38      38  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0      38  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                0       39      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0      39  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       23      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        1      25  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                0        9     202  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     202  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                0      193     202  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     202  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       13      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       82      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0      95  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       74     111  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     111  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       37     111  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     111  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0      536     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1       37     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        1     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        1     575  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0       43      45  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        2      45  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0        0      45  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        0      45  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      660     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1       47     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     707  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    17614   17992  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      349   17992  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       29   17992  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   17992  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     2363    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       31    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        0    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    2394  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      238     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        2     240  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        0     142  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     142  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      142     142  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     142  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                0      229     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                1        6     235  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      232     233  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     233  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                0       11     259  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     259  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                0      248     259  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                1        0     259  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       37     248  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     248  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      208     248  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        3     248  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      168     246  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     246  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       78     246  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     246  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      361     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       19     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     380  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      529     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        6     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        2     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        0     537  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       11      11  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        0      11  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0        0      11  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0      11  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      715     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715  swasted          
6 months    ki1114097-CONTENT          PERU                           1                0       54      57  swasted          
6 months    ki1114097-CONTENT          PERU                           1                1        0      57  swasted          
6 months    ki1114097-CONTENT          PERU                           0                0        3      57  swasted          
6 months    ki1114097-CONTENT          PERU                           0                1        0      57  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                0      672     816  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     816  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                0      144     816  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     816  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    16527   16776  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      229   16776  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       20   16776  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   16776  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     4793    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       33    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4827  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      212     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     113  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     113  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      112     113  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     113  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                0      225     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                1        2     227  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     226  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     226  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      225     226  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        0     226  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                0        7     193  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     193  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                0      184     193  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                1        2     193  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     237  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     237  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      203     237  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     237  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      145     213  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     213  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       68     213  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     213  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      416     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       10     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        2     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        0     428  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0        9       9  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        0       9  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0       9  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0       9  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      510     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     514  swasted          
24 months   ki1114097-CONTENT          PERU                           1                0       45      48  swasted          
24 months   ki1114097-CONTENT          PERU                           1                1        0      48  swasted          
24 months   ki1114097-CONTENT          PERU                           0                0        3      48  swasted          
24 months   ki1114097-CONTENT          PERU                           0                1        0      48  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                0      463     558  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                1        1     558  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                0       94     558  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                1        0     558  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     8251    8594  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      332    8594  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       10    8594  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        1    8594  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     4600    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      129    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4730  swasted          


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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED

















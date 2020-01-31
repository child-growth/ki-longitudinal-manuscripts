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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      166     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       35     201  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        0      38  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0      38  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       36      38  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        2      38  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0               0       34      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0               1        5      39  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        1      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0               0       22      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        2      25  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1               0        9     202  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     202  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0               0      188     202  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0               1        5     202  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       11      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       74      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        8      95  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       73     111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       37     111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     111  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0      406     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1      167     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0        1     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1        1     575  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0       35      45  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       10      45  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0        0      45  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1        0      45  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      535     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1      172     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0     707  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    15994   17992  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     1969   17992  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0       25   17992  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        4   17992  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     2156    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      238    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0        0    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    2394  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      232     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        8     240  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        0     142  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     142  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      141     142  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        1     142  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0               0      216     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0               1       19     235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1               0        1     233  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     233  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      228     233  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        4     233  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1               0       11     259  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     259  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0               0      248     259  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0               1        0     259  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       36     248  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     248  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      205     248  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        6     248  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0      168     246  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     246  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       77     246  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        1     246  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      311     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       69     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0        0     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        0     380  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0      500     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1       35     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0        2     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1        0     537  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       11      11  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        0      11  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0        0      11  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        0      11  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      694     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       21     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0     715  wasted           
6 months    ki1114097-CONTENT          PERU                           1               0       54      57  wasted           
6 months    ki1114097-CONTENT          PERU                           1               1        0      57  wasted           
6 months    ki1114097-CONTENT          PERU                           0               0        3      57  wasted           
6 months    ki1114097-CONTENT          PERU                           0               1        0      57  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1               0      661     816  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1               1       11     816  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0               0      141     816  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0               1        3     816  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    15339   16776  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     1417   16776  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       18   16776  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        2   16776  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     4551    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      275    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0        1    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    4827  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      191     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       21     212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        0     113  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     113  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      111     113  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        2     113  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0               0      200     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0               1       27     227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1               0        1     226  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     226  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      220     226  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        5     226  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1               0        7     193  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1               1        0     193  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0               0      182     193  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0               1        4     193  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       34     237  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     237  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      202     237  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1     237  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0      141     213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        4     213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       68     213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     213  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0      373     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       53     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0        2     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1        0     428  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0        7       9  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        2       9  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0        0       9  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1        0       9  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      469     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0     514  wasted           
24 months   ki1114097-CONTENT          PERU                           1               0       45      48  wasted           
24 months   ki1114097-CONTENT          PERU                           1               1        0      48  wasted           
24 months   ki1114097-CONTENT          PERU                           0               0        3      48  wasted           
24 months   ki1114097-CONTENT          PERU                           0               1        0      48  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1               0      456     558  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1               1        8     558  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0               0       92     558  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0               1        2     558  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     6713    8594  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     1870    8594  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0        7    8594  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        4    8594  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     3809    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      920    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0        1    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    4730  wasted           


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

















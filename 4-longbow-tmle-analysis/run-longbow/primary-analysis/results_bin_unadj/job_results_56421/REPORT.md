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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        impsan    wast_rec90d   n_cell      n  outcome_variable 
------------  ----------------------  -----------------------------  -------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       33    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       67    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0       10    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1       11    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        6     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1       17     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        1     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       25    172  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       43    172  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       39    172  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       65    172  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       19     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       78     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU                           1                   1        6     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU                           0                   1       21     33  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1     79  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     79  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0       12     79  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       65     79  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     50  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     50  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        9     50  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       41     50  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       66    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       81    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0      136    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1      138    421  wast_rec90d      
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0        9     15  wast_rec90d      
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1        6     15  wast_rec90d      
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        0     15  wast_rec90d      
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        0     15  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       96    306  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      169    306  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       18    306  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       23    306  wast_rec90d      
0-24 months   ki1114097-CONTENT       PERU                           1                   0        2      9  wast_rec90d      
0-24 months   ki1114097-CONTENT       PERU                           1                   1        7      9  wast_rec90d      
0-24 months   ki1114097-CONTENT       PERU                           0                   0        0      9  wast_rec90d      
0-24 months   ki1114097-CONTENT       PERU                           0                   1        0      9  wast_rec90d      
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0       10    264  wast_rec90d      
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1       14    264  wast_rec90d      
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      154    264  wast_rec90d      
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1       86    264  wast_rec90d      
0-24 months   ki1135781-COHORTS       INDIA                          1                   0      452   1962  wast_rec90d      
0-24 months   ki1135781-COHORTS       INDIA                          1                   1      178   1962  wast_rec90d      
0-24 months   ki1135781-COHORTS       INDIA                          0                   0     1050   1962  wast_rec90d      
0-24 months   ki1135781-COHORTS       INDIA                          0                   1      282   1962  wast_rec90d      
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       22    683  wast_rec90d      
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       58    683  wast_rec90d      
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      242    683  wast_rec90d      
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      361    683  wast_rec90d      
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0     77  wast_rec90d      
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0     77  wast_rec90d      
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       65     77  wast_rec90d      
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12     77  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     2903   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     2228   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1463   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1      966   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     1115   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      390   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      415   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      142   2062  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   0       11     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   1       41     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   0        1     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   1        7     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   0        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   1       13     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   1        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   0       11     79  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   1       26     79  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   0       11     79  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   1       31     79  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   0        8     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   1       39     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   0        0     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   1        0     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU                           1                   0        0      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU                           1                   1        1      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU                           0                   0        0      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU                           0                   1        8      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        0     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        4     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       24     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        1     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       13     14  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   0       22    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   1       62    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   0       42    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   1       97    223  wast_rec90d      
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   0        8     13  wast_rec90d      
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   1        5     13  wast_rec90d      
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   0        0     13  wast_rec90d      
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   1        0     13  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       16    195  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      153    195  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0        4    195  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       22    195  wast_rec90d      
0-6 months    ki1114097-CONTENT       PERU                           1                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT       PERU                           1                   1        4      4  wast_rec90d      
0-6 months    ki1114097-CONTENT       PERU                           0                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT       PERU                           0                   1        0      4  wast_rec90d      
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   0        1    125  wast_rec90d      
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   1       14    125  wast_rec90d      
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   0       30    125  wast_rec90d      
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   1       80    125  wast_rec90d      
0-6 months    ki1135781-COHORTS       INDIA                          1                   0      269   1290  wast_rec90d      
0-6 months    ki1135781-COHORTS       INDIA                          1                   1      178   1290  wast_rec90d      
0-6 months    ki1135781-COHORTS       INDIA                          0                   0      561   1290  wast_rec90d      
0-6 months    ki1135781-COHORTS       INDIA                          0                   1      282   1290  wast_rec90d      
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   0        8    280  wast_rec90d      
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   1       41    280  wast_rec90d      
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   0       58    280  wast_rec90d      
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   1      173    280  wast_rec90d      
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   0        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   1        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   0        4      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   1        0      4  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   0      980   4728  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     2228   4728  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   0      554   4728  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   1      966   4728  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   0      172    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   1      233    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   0       70    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   1       73    548  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       22     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       26     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0        9     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1        4     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        5      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       14     93  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       17     93  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       28     93  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       34     93  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       11     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       39     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU                           1                   1        5     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU                           0                   1       13     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        8     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       41     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        8     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       28     36  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       44    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       19    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0       94    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1       41    198  wast_rec90d      
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0        1      2  wast_rec90d      
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1        1      2  wast_rec90d      
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        0      2  wast_rec90d      
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        0      2  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       80    111  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       16    111  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       14    111  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1        1    111  wast_rec90d      
6-24 months   ki1114097-CONTENT       PERU                           1                   0        2      5  wast_rec90d      
6-24 months   ki1114097-CONTENT       PERU                           1                   1        3      5  wast_rec90d      
6-24 months   ki1114097-CONTENT       PERU                           0                   0        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT       PERU                           0                   1        0      5  wast_rec90d      
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0        9    139  wast_rec90d      
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1        0    139  wast_rec90d      
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      124    139  wast_rec90d      
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1        6    139  wast_rec90d      
6-24 months   ki1135781-COHORTS       INDIA                          1                   0      183    672  wast_rec90d      
6-24 months   ki1135781-COHORTS       INDIA                          1                   1        0    672  wast_rec90d      
6-24 months   ki1135781-COHORTS       INDIA                          0                   0      489    672  wast_rec90d      
6-24 months   ki1135781-COHORTS       INDIA                          0                   1        0    672  wast_rec90d      
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       14    403  wast_rec90d      
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       17    403  wast_rec90d      
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      184    403  wast_rec90d      
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      188    403  wast_rec90d      
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0     73  wast_rec90d      
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0     73  wast_rec90d      
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       61     73  wast_rec90d      
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12     73  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     1923   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1        0   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0      909   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1        0   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0      943   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      157   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      345   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1       69   1514  wast_rec90d      


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/860b81e0-6e88-4b48-bfba-af5c0d11efb4/4d654ea4-6b8a-43ff-b84b-384c8563c9e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/860b81e0-6e88-4b48-bfba-af5c0d11efb4/4d654ea4-6b8a-43ff-b84b-384c8563c9e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/860b81e0-6e88-4b48-bfba-af5c0d11efb4/4d654ea4-6b8a-43ff-b84b-384c8563c9e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/860b81e0-6e88-4b48-bfba-af5c0d11efb4/4d654ea4-6b8a-43ff-b84b-384c8563c9e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.6700000   0.5744320   0.7655680
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5238095   0.3303014   0.7173177
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.6323529   0.5048556   0.7598503
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.6250000   0.5219164   0.7280836
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5510204   0.4645738   0.6374670
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5036496   0.4414527   0.5658466
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.6377358   0.5802574   0.6952143
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.5609756   0.4014318   0.7205194
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.5833333   0.3683989   0.7982678
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.3583333   0.2956074   0.4210592
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.2825397   0.2459315   0.3191479
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2117117   0.1902035   0.2332199
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7250000   0.6113567   0.8386433
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5986733   0.5582519   0.6390947
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4342233   0.4205828   0.4478639
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3976945   0.3785167   0.4168724
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2591362   0.2362124   0.2820601
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2549372   0.2189585   0.2909158
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.7027027   0.5539789   0.8514265
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.7380952   0.5976960   0.8784945
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7380952   0.6434348   0.8327557
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6978417   0.6216977   0.7739857
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3982103   0.3528118   0.4436088
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.3345196   0.3026570   0.3663822
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.8367347   0.7280039   0.9454655
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7489177   0.6935154   0.8043201
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.6945137   0.6785787   0.7104488
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.6355263   0.6113185   0.6597341
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5753086   0.5271245   0.6234928
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.5104895   0.4284825   0.5924965
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.5483871   0.3554241   0.7413501
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5483871   0.4046587   0.6921155
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.3015873   0.1861854   0.4169892
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3037037   0.2246718   0.3827357
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.5483871   0.3670161   0.7297581
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5053763   0.4516690   0.5590836
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1427273   0.1220970   0.1633575
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1666667   0.1328485   0.2004848


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.6279070   0.5477344   0.7080796
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.6274510   0.5732906   0.6816113
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.3787879   0.3179432   0.4396325
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2344546   0.2156201   0.2532892
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6134700   0.5751620   0.6517779
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4224868   0.4113573   0.4336163
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.7215190   0.6193314   0.8237066
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.3565891   0.3304405   0.3827378
0-6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7642857   0.7146210   0.8139505
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.6755499   0.6622049   0.6888949
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5483871   0.4327976   0.6639766
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.5086849   0.4571562   0.5602135
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.7818053   0.5261486   1.1616859
0-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 0.9883721   0.7617151   1.2824735
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9140308   0.7485355   1.1161159
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.8796363   0.6525074   1.1858258
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 0.6142857   0.4085128   0.9237090
0-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       INDIA         0                    1                 0.7493167   0.6355719   0.8834179
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 0.8257563   0.6961780   0.9794528
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 0.9158755   0.8646529   0.9701326
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 0.9837960   0.8328454   1.1621059
0-6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.0503663   0.7902143   1.3961647
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9454630   0.7989425   1.1188542
0-6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       INDIA         0                    1                 0.8400576   0.7240869   0.9746022
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 0.8950480   0.7707387   1.0394068
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 0.9150666   0.8752673   0.9566756
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 0.8873316   0.7402979   1.0635682
6-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.0000000   0.6453048   1.5496552
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.0070175   0.6341484   1.5991277
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 0.9215686   0.6511208   1.3043489
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1677282   0.9101777   1.4981571


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0253719   -0.0643372    0.0135934
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0044460   -0.1035757    0.0946838
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0308304   -0.1000663    0.0384055
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0102849   -0.0328916    0.0123219
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.2045455   -0.4081981   -0.0008928
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0480850   -0.0769423   -0.0192278
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1115300   -0.2179199   -0.0051402
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0117366   -0.0193116   -0.0041615
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0011343   -0.0126617    0.0103931
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0188163   -0.0899213    0.1275539
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0250908   -0.1008550    0.0506735
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.0416211   -0.0779039   -0.0053384
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0724490   -0.1732018    0.0283039
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0189638   -0.0283141   -0.0096135
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0169145   -0.0418490    0.0080200
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0000000   -0.1601409    0.1601409
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0014430   -0.0938618    0.0967478
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0397022   -0.2142926    0.1348881
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0065462   -0.0042800    0.0173724


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0393590   -0.1017847    0.0195298
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0070806   -0.1780040    0.1390425
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0592675   -0.2011193    0.0658315
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0163915   -0.0531800    0.0191120
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.5400000   -1.1882863   -0.0837704
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.2050932   -0.3333330   -0.0891874
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1818019   -0.3688183   -0.0203368
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0277797   -0.0458606   -0.0100115
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0043964   -0.0500718    0.0392922
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0260787   -0.1369378    0.1657216
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0351902   -0.1472525    0.0659260
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1167202   -0.2233429   -0.0193903
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0947931   -0.2355973    0.0299657
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0280716   -0.0420436   -0.0142870
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0302913   -0.0760227    0.0134965
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0000000   -0.3391320    0.2532476
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0047619   -0.3651133    0.2744200
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0780488   -0.4824650    0.2160428
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0438536   -0.0316676    0.1138464

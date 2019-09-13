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

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        impsan    ever_co   n_cell       n
------------  ----------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0      171     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       33     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       32     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1        6     242
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      204     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        2     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        4     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     210
0-24 months   ki0047075b-MAL-ED       INDIA                          1               0       93     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1               1       15     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0               0       89     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0               1       36     233
0-24 months   ki0047075b-MAL-ED       NEPAL                          1               0      214     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1               1       21     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     236
0-24 months   ki0047075b-MAL-ED       PERU                           1               0       60     263
0-24 months   ki0047075b-MAL-ED       PERU                           1               1        5     263
0-24 months   ki0047075b-MAL-ED       PERU                           0               0      192     263
0-24 months   ki0047075b-MAL-ED       PERU                           0               1        6     263
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      227     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       19     250
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      218     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       23     241
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      196     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       46     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      291     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1       91     624
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      581     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1       85     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       27     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        5     698
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      595     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1       60     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       82     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       10     747
0-24 months   ki1114097-CONTENT       PERU                           1               0      197     215
0-24 months   ki1114097-CONTENT       PERU                           1               1        4     215
0-24 months   ki1114097-CONTENT       PERU                           0               0       14     215
0-24 months   ki1114097-CONTENT       PERU                           0               1        0     215
0-24 months   ki1135781-COHORTS       GUATEMALA                      1               0       76     875
0-24 months   ki1135781-COHORTS       GUATEMALA                      1               1        6     875
0-24 months   ki1135781-COHORTS       GUATEMALA                      0               0      677     875
0-24 months   ki1135781-COHORTS       GUATEMALA                      0               1      116     875
0-24 months   ki1135781-COHORTS       INDIA                          1               0     1908    5372
0-24 months   ki1135781-COHORTS       INDIA                          1               1      106    5372
0-24 months   ki1135781-COHORTS       INDIA                          0               0     2937    5372
0-24 months   ki1135781-COHORTS       INDIA                          0               1      421    5372
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1               0      168    1191
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       11    1191
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      778    1191
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      234    1191
0-24 months   ki1148112-LCNI-5        MALAWI                         1               0        3     813
0-24 months   ki1148112-LCNI-5        MALAWI                         1               1        0     813
0-24 months   ki1148112-LCNI-5        MALAWI                         0               0      768     813
0-24 months   ki1148112-LCNI-5        MALAWI                         0               1       42     813
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0    17256   26898
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1     1486   26898
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     7261   26898
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      895   26898
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3557    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1      631    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0      993    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      245    5426
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      196     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1        8     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       37     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        1     242
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      206     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        0     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     210
0-6 months    ki0047075b-MAL-ED       INDIA                          1               0      102     233
0-6 months    ki0047075b-MAL-ED       INDIA                          1               1        6     233
0-6 months    ki0047075b-MAL-ED       INDIA                          0               0      115     233
0-6 months    ki0047075b-MAL-ED       INDIA                          0               1       10     233
0-6 months    ki0047075b-MAL-ED       NEPAL                          1               0      228     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          1               1        7     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236
0-6 months    ki0047075b-MAL-ED       PERU                           1               0       65     263
0-6 months    ki0047075b-MAL-ED       PERU                           1               1        0     263
0-6 months    ki0047075b-MAL-ED       PERU                           0               0      197     263
0-6 months    ki0047075b-MAL-ED       PERU                           0               1        1     263
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      243     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        3     250
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      237     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        4     241
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      222     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1       20     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      355     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1       25     622
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0      637     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1       29     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0       31     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        1     698
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      641     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1       14     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       89     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1        3     747
0-6 months    ki1114097-CONTENT       PERU                           1               0      201     215
0-6 months    ki1114097-CONTENT       PERU                           1               1        0     215
0-6 months    ki1114097-CONTENT       PERU                           0               0       14     215
0-6 months    ki1114097-CONTENT       PERU                           0               1        0     215
0-6 months    ki1135781-COHORTS       GUATEMALA                      1               0       67     667
0-6 months    ki1135781-COHORTS       GUATEMALA                      1               1        1     667
0-6 months    ki1135781-COHORTS       GUATEMALA                      0               0      587     667
0-6 months    ki1135781-COHORTS       GUATEMALA                      0               1       12     667
0-6 months    ki1135781-COHORTS       INDIA                          1               0     1893    5167
0-6 months    ki1135781-COHORTS       INDIA                          1               1       26    5167
0-6 months    ki1135781-COHORTS       INDIA                          0               0     3133    5167
0-6 months    ki1135781-COHORTS       INDIA                          0               1      115    5167
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      179    1191
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1               1        0    1191
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      989    1191
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0               1       23    1191
0-6 months    ki1148112-LCNI-5        MALAWI                         1               0        0     269
0-6 months    ki1148112-LCNI-5        MALAWI                         1               1        0     269
0-6 months    ki1148112-LCNI-5        MALAWI                         0               0      269     269
0-6 months    ki1148112-LCNI-5        MALAWI                         0               1        0     269
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    18015   26791
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1      652   26791
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     7722   26791
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1      402   26791
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     3840    5079
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1       91    5079
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0     1105    5079
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1       43    5079
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0      171     239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       30     239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       33     239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1        5     239
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      201     207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        2     207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        4     207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     207
6-24 months   ki0047075b-MAL-ED       INDIA                          1               0       95     233
6-24 months   ki0047075b-MAL-ED       INDIA                          1               1       13     233
6-24 months   ki0047075b-MAL-ED       INDIA                          0               0       93     233
6-24 months   ki0047075b-MAL-ED       INDIA                          0               1       32     233
6-24 months   ki0047075b-MAL-ED       NEPAL                          1               0      218     235
6-24 months   ki0047075b-MAL-ED       NEPAL                          1               1       16     235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     235
6-24 months   ki0047075b-MAL-ED       PERU                           1               0       60     263
6-24 months   ki0047075b-MAL-ED       PERU                           1               1        5     263
6-24 months   ki0047075b-MAL-ED       PERU                           0               0      192     263
6-24 months   ki0047075b-MAL-ED       PERU                           0               1        6     263
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      228     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       18     250
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      216     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       21     237
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      173     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       35     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      255     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1       79     542
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      513     612
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1       70     612
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       24     612
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        5     612
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      578     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1       52     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       79     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       10     719
6-24 months   ki1114097-CONTENT       PERU                           1               0      197     215
6-24 months   ki1114097-CONTENT       PERU                           1               1        4     215
6-24 months   ki1114097-CONTENT       PERU                           0               0       14     215
6-24 months   ki1114097-CONTENT       PERU                           0               1        0     215
6-24 months   ki1135781-COHORTS       GUATEMALA                      1               0       75     857
6-24 months   ki1135781-COHORTS       GUATEMALA                      1               1        5     857
6-24 months   ki1135781-COHORTS       GUATEMALA                      0               0      668     857
6-24 months   ki1135781-COHORTS       GUATEMALA                      0               1      109     857
6-24 months   ki1135781-COHORTS       INDIA                          1               0     1811    5023
6-24 months   ki1135781-COHORTS       INDIA                          1               1       92    5023
6-24 months   ki1135781-COHORTS       INDIA                          0               0     2745    5023
6-24 months   ki1135781-COHORTS       INDIA                          0               1      375    5023
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1               0      136    1113
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       11    1113
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      739    1113
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      227    1113
6-24 months   ki1148112-LCNI-5        MALAWI                         1               0        3     801
6-24 months   ki1148112-LCNI-5        MALAWI                         1               1        0     801
6-24 months   ki1148112-LCNI-5        MALAWI                         0               0      756     801
6-24 months   ki1148112-LCNI-5        MALAWI                         0               1       42     801
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0    11438   17268
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1      925   17268
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     4331   17268
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      574   17268
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3608    5422
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1      578    5422
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0     1013    5422
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      223    5422


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/195b7069-2503-47c2-acb6-1e9dd7fafc7b/d192d3a0-96b1-4f84-a110-ba3a36dfa490/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/195b7069-2503-47c2-acb6-1e9dd7fafc7b/d192d3a0-96b1-4f84-a110-ba3a36dfa490/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/195b7069-2503-47c2-acb6-1e9dd7fafc7b/d192d3a0-96b1-4f84-a110-ba3a36dfa490/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/195b7069-2503-47c2-acb6-1e9dd7fafc7b/d192d3a0-96b1-4f84-a110-ba3a36dfa490/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1617647   0.1111290   0.2124004
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1578947   0.0417171   0.2740724
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1430976   0.0779708   0.2082244
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.2886962   0.2090059   0.3683865
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1899265   0.1406749   0.2391780
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2376774   0.1949806   0.2803743
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1276276   0.1022678   0.1529874
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.1562500   0.0303571   0.2821429
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0916271   0.0695152   0.1137391
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1111600   0.0464630   0.1758569
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0731707   0.0167735   0.1295680
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1462799   0.1216700   0.1708899
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0641192   0.0520092   0.0762293
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1178720   0.1069117   0.1288322
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0650587   0.0276838   0.1024337
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2280490   0.2021717   0.2539264
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0822004   0.0775486   0.0868522
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1080275   0.1000143   0.1160406
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1530697   0.1403599   0.1657795
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1872623   0.1633933   0.2111313
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0555556   0.0122621   0.0988490
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0800000   0.0323387   0.1276613
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0804685   0.0456435   0.1152934
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0652909   0.0403177   0.0902641
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0136839   0.0083809   0.0189869
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0349655   0.0286678   0.0412631
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0366361   0.0334657   0.0398064
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0490196   0.0436172   0.0544219
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0232168   0.0178339   0.0285997
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0353316   0.0219986   0.0486646
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1492537   0.0998883   0.1986192
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238766   0.2392813
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1232345   0.0626833   0.1837857
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.2578108   0.1809758   0.3346459
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1690245   0.1176029   0.2204460
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2382976   0.1927692   0.2838259
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1200686   0.0936623   0.1464749
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.1724138   0.0348206   0.3100069
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0824352   0.0609574   0.1039130
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1242037   0.0574871   0.1909204
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0625000   0.0094259   0.1155741
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1402831   0.1158504   0.1647158
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0605196   0.0486544   0.0723847
6-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1111212   0.1001335   0.1221090
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0822320   0.0359534   0.1285105
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2328404   0.2061626   0.2595182
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0787638   0.0733834   0.0841443
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1105453   0.0996125   0.1214780
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1399214   0.1278717   0.1519712
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1709449   0.1481944   0.1936954


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.2188841   0.1656771   0.2720911
0-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1289398   0.1040599   0.1538198
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0937082   0.0727959   0.1146204
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1394286   0.1164638   0.1623933
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0981013   0.0901463   0.1060562
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2057095   0.1827432   0.2286758
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0885196   0.0846439   0.0923953
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1614449   0.1501252   0.1727646
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0686695   0.0361280   0.1012111
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0272886   0.0228458   0.0317313
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0393416   0.0368565   0.0418267
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1931330   0.1423366   0.2439295
6-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1225490   0.0965478   0.1485502
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0862309   0.0656987   0.1067631
6-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1330222   0.1102724   0.1557720
6-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0929723   0.0849408   0.1010038
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2138365   0.1897378   0.2379351
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0868080   0.0821493   0.0914667
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1477315   0.1371478   0.1583151


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.9760766   0.4387519   2.171445
0-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 2.0174780   1.1888968   3.423525
0-24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.2514182   0.9139249   1.713540
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.2242647   0.5339174   2.807221
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.2131774   0.6464934   2.276588
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 1.9991593   0.9082974   4.400142
0-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA         0                    1                 1.8383253   1.4904766   2.267355
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 3.5052805   1.9528640   6.291780
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.3141968   1.2039604   1.434527
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2233792   1.0518396   1.422894
0-6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.4400000   0.5399472   3.840376
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.8113847   0.4558502   1.444214
0-6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA         0                    1                 2.5552257   1.6666185   3.917620
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.3380136   1.1617595   1.541008
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.5218126   0.9785715   2.366627
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8815789   0.3646285   2.131434
6-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 2.0920341   1.1847041   3.694261
6-24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.4098406   0.9856064   2.016678
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.4359606   0.6275349   3.285845
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.5066828   0.8290119   2.738312
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 2.2445302   0.9433052   5.340706
6-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       INDIA         0                    1                 1.8361214   1.4755486   2.284806
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 2.8315073   1.5951781   5.026043
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.4035030   1.2509452   1.574666
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2217203   1.0416659   1.432898


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0006077   -0.0205087   0.0192933
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0757865    0.0201067   0.1314664
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0296248   -0.0101894   0.0694390
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0013122   -0.0045921   0.0072165
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0020810   -0.0061906   0.0103526
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0662578    0.0104736   0.1220421
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0339821    0.0227894   0.0451747
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1406508    0.1014364   0.1798652
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0063192    0.0036818   0.0089566
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0083752    0.0020181   0.0147323
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0131140   -0.0214650   0.0476929
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0081212   -0.0343093   0.0180669
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0136047    0.0083497   0.0188597
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0027055    0.0008187   0.0045923
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0031664   -0.0003005   0.0066332
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0028102   -0.0216654   0.0160450
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0698985    0.0176016   0.1221954
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0413076   -0.0011689   0.0837841
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0024804   -0.0042168   0.0091776
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0037956   -0.0047555   0.0123468
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0705222    0.0175268   0.1235175
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0324528    0.0214919   0.0434136
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1316045    0.0845518   0.1786572
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0080441    0.0049036   0.0111847
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0078100    0.0018684   0.0137517


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0037707   -0.1351730   0.1124210
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.3462404    0.0503352   0.5499447
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1349335   -0.0661185   0.2980705
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0101768   -0.0366587   0.0548963
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0222075   -0.0700580   0.1065175
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.4752099   -0.1111802   0.7521513
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.3463978    0.2255384   0.4483963
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6837350    0.4463199   0.8193478
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0713879    0.0409945   0.1008180
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0518764    0.0116807   0.0904373
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.1909722   -0.4941878   0.5619520
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1122534   -0.5373989   0.1953242
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.4985481    0.2884311   0.6466204
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0687694    0.0191936   0.1158394
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.1200144   -0.0153827   0.2373569
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0191898   -0.1563308   0.1016863
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.3619190    0.0444750   0.5739019
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1963925   -0.0316717   0.3740402
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0202401   -0.0358324   0.0732773
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0440173   -0.0599822   0.1378129
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.5301535   -0.0763444   0.7949023
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.3490584    0.2242536   0.4537842
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6154446    0.3346779   0.7777274
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0926659    0.0558640   0.1280333
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0528663    0.0116617   0.0923531

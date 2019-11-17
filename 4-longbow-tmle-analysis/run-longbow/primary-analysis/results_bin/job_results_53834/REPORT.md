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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      203     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        3     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        4     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     210
0-24 months   ki0047075b-MAL-ED       INDIA                          1               0       93     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1               1       15     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0               0       89     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0               1       36     233
0-24 months   ki0047075b-MAL-ED       NEPAL                          1               0      213     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1               1       22     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     236
0-24 months   ki0047075b-MAL-ED       PERU                           1               0       60     263
0-24 months   ki0047075b-MAL-ED       PERU                           1               1        5     263
0-24 months   ki0047075b-MAL-ED       PERU                           0               0      192     263
0-24 months   ki0047075b-MAL-ED       PERU                           0               1        6     263
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      226     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       20     250
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      218     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       23     241
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      196     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       46     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      291     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1       91     624
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0       57      60
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1        1      60
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0        2      60
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        0      60
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
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0    17250   26894
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1     1490   26894
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     7255   26894
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      899   26894
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3557    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1      631    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0      993    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      245    5426
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      196     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1        8     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       37     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        1     242
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      205     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        1     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     210
0-6 months    ki0047075b-MAL-ED       INDIA                          1               0      102     233
0-6 months    ki0047075b-MAL-ED       INDIA                          1               1        6     233
0-6 months    ki0047075b-MAL-ED       INDIA                          0               0      114     233
0-6 months    ki0047075b-MAL-ED       INDIA                          0               1       11     233
0-6 months    ki0047075b-MAL-ED       NEPAL                          1               0      227     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          1               1        8     236
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
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0       58      60
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1        0      60
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0        2      60
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        0      60
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
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    18009   26787
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1      656   26787
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     7716   26787
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1      406   26787
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
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      227     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       19     250
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      216     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       21     237
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      173     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       35     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      255     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1       79     542
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0        9      10
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1        1      10
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0        0      10
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        0      10
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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/d8755d07-4930-4d60-a2e9-fa84af01b04a/9446cece-58ad-4629-ae89-1f4a60ae02d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8755d07-4930-4d60-a2e9-fa84af01b04a/9446cece-58ad-4629-ae89-1f4a60ae02d2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8755d07-4930-4d60-a2e9-fa84af01b04a/9446cece-58ad-4629-ae89-1f4a60ae02d2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8755d07-4930-4d60-a2e9-fa84af01b04a/9446cece-58ad-4629-ae89-1f4a60ae02d2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1617647   0.1111290   0.2124004
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1578947   0.0417171   0.2740724
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1415366   0.0761215   0.2069518
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.2789302   0.1996297   0.3582306
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1981520   0.1479201   0.2483839
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2326994   0.1904245   0.2749744
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0918292   0.0697326   0.1139258
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1301521   0.0667739   0.1935302
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0731707   0.0167735   0.1295680
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1462799   0.1216700   0.1708899
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0633642   0.0516668   0.0750616
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1184083   0.1073759   0.1294406
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0691008   0.0307610   0.1074405
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2280355   0.2021959   0.2538751
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0823850   0.0776988   0.0870712
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1081863   0.1002579   0.1161146
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1523906   0.1397260   0.1650553
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1912179   0.1659590   0.2164768
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0555556   0.0122621   0.0988490
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0880000   0.0382302   0.1377698
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0797803   0.0450149   0.1145456
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0660575   0.0410771   0.0910380
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0133735   0.0082059   0.0185410
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0348545   0.0285736   0.0411354
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0365723   0.0334254   0.0397192
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0472219   0.0422391   0.0522048
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0233090   0.0179469   0.0286712
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0338162   0.0211962   0.0464363
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1492537   0.0998883   0.1986192
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238766   0.2392813
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1150582   0.0536744   0.1764419
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.2397298   0.1637099   0.3157496
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1789275   0.1274192   0.2304359
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2285478   0.1837214   0.2733741
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0822435   0.0607243   0.1037627
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0979658   0.0304006   0.1655311
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0625000   0.0094259   0.1155741
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1402831   0.1158504   0.1647158
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0608448   0.0487776   0.0729120
6-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1112948   0.1002964   0.1222932
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0782118   0.0317366   0.1246870
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2324067   0.2057559   0.2590575
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0789338   0.0736081   0.0842596
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1105241   0.0998406   0.1212075
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1395790   0.1275149   0.1516430
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1736219   0.1499707   0.1972731


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.2188841   0.1656771   0.2720911
0-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0937082   0.0727959   0.1146204
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1394286   0.1164638   0.1623933
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0981013   0.0901463   0.1060562
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2057095   0.1827432   0.2286758
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0888302   0.0849233   0.0927371
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1614449   0.1501252   0.1727646
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0729614   0.0394957   0.1064270
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0272886   0.0228458   0.0317313
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0396461   0.0371429   0.0421492
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1931330   0.1423366   0.2439295
6-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2103321   0.1759902   0.2446740
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
0-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.9707283   1.1498436   3.377651
0-24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1743481   0.8619868   1.599901
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.4173276   0.8228329   2.441343
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 1.9991593   0.9082974   4.400142
0-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA         0                    1                 1.8686927   1.5207085   2.296306
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 3.3000432   1.8745959   5.809404
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.3131786   1.2048774   1.431215
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2547875   1.0735783   1.466583
0-6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.5840000   0.6047559   4.148874
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.8279934   0.4656112   1.472415
0-6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA         0                    1                 2.6062400   1.7014973   3.992065
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2911940   1.1248765   1.482102
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.4507786   0.9369836   2.246313
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8815789   0.3646285   2.131434
6-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 2.0835524   1.1256825   3.856496
6-24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.2773203   0.9055634   1.801693
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.1911683   0.5695964   2.491030
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 2.2445302   0.9433052   5.340706
6-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       INDIA         0                    1                 1.8291591   1.4670043   2.280718
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 2.9715042   1.6231713   5.439868
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.4002118   1.2500110   1.568461
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2438974   1.0575165   1.463127


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0006077   -0.0205087   0.0192933
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0773475    0.0213938   0.1333012
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0213993   -0.0189539   0.0617524
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0018790   -0.0064230   0.0101809
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0662578    0.0104736   0.1220421
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0347370    0.0239241   0.0455500
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1366087    0.0966069   0.1766105
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0064452    0.0038496   0.0090407
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0090543    0.0026914   0.0154171
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0174058   -0.0180442   0.0528558
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0074330   -0.0335971   0.0187311
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0139151    0.0087487   0.0190815
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0030738    0.0012166   0.0049310
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0030741   -0.0003971   0.0065453
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0028102   -0.0216654   0.0160450
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0780749    0.0240657   0.1320841
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0314046   -0.0107626   0.0735718
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0039874   -0.0046169   0.0125916
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0705222    0.0175268   0.1235175
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0321275    0.0209685   0.0432866
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1356247    0.0882718   0.1829776
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0078741    0.0047441   0.0110042
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0081525    0.0021467   0.0141583


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0037707   -0.1351730   0.1124210
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.3533720    0.0546314   0.5577093
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0974681   -0.1059867   0.2634959
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0200513   -0.0725405   0.1046497
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.4752099   -0.1111802   0.7521513
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.3540936    0.2381146   0.4524176
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6640857    0.4231609   0.8043849
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0725562    0.0426991   0.1014822
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0560826    0.0158659   0.0946558
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.2385621   -0.4206987   0.5918996
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1027409   -0.5282394   0.2042887
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.5099242    0.3053499   0.6542514
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0775310    0.0291038   0.1235427
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.1165181   -0.0189555   0.2339800
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0191898   -0.1563308   0.1016863
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.4042543    0.0689214   0.6188152
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1493095   -0.0753942   0.3270613
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0462408   -0.0584953   0.1406134
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.5301535   -0.0763444   0.7949023
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.3455601    0.2181007   0.4522420
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6342448    0.3469720   0.7951438
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0907076    0.0541295   0.1258711
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0551847    0.0135257   0.0950844

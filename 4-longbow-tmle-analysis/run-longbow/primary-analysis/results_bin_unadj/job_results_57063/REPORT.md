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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid      country                        impsan    ever_swasted   n_cell      n
----------------------------  -----------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                    0       81    870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                    1        0    870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                    0      763    870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                    1       26    870
0-24 months (no birth wast)   COHORTS      INDIA                          1                    0     1908   5168
0-24 months (no birth wast)   COHORTS      INDIA                          1                    1       58   5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                    0     3009   5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                    1      193   5168
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                    0      169   1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                    1       10   1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                    0      917   1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                    1       89   1185
0-24 months (no birth wast)   CONTENT      PERU                           1                    0      200    215
0-24 months (no birth wast)   CONTENT      PERU                           1                    1        1    215
0-24 months (no birth wast)   CONTENT      PERU                           0                    0       14    215
0-24 months (no birth wast)   CONTENT      PERU                           0                    1        0    215
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                    0        3    810
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                    1        0    810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                    0      800    810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                    1        7    810
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                    0      193    242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                    1       11    242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                    0       37    242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                    1        1    242
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                    0      202    210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                    1        4    210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                    0        4    210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                    1        0    210
0-24 months (no birth wast)   MAL-ED       INDIA                          1                    0      102    229
0-24 months (no birth wast)   MAL-ED       INDIA                          1                    1        3    229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                    0      116    229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                    1        8    229
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                    0      232    236
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                    1        3    236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                    0        1    236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                    1        0    236
0-24 months (no birth wast)   MAL-ED       PERU                           1                    0       65    263
0-24 months (no birth wast)   MAL-ED       PERU                           1                    1        0    263
0-24 months (no birth wast)   MAL-ED       PERU                           0                    0      194    263
0-24 months (no birth wast)   MAL-ED       PERU                           0                    1        4    263
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                    0        4    250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                    1        0    250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                    0      234    250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                    1       12    250
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0    241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0    241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      233    241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        8    241
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                    0      216    602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                    1       17    602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                    0      332    602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                    1       37    602
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                    0      634    743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                    1       17    743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                    0       89    743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                    1        3    743
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                    0       50     52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                    1        0     52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                    0        2     52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                    1        0     52
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                    0       67    650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                    1        0    650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                    0      582    650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                    1        1    650
0-6 months (no birth wast)    COHORTS      INDIA                          1                    0     1760   4723
0-6 months (no birth wast)    COHORTS      INDIA                          1                    1       22   4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                    0     2882   4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                    1       59   4723
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                    0      176   1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                    1        3   1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                    0      987   1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                    1       14   1180
0-6 months (no birth wast)    CONTENT      PERU                           1                    0      200    215
0-6 months (no birth wast)    CONTENT      PERU                           1                    1        1    215
0-6 months (no birth wast)    CONTENT      PERU                           0                    0       14    215
0-6 months (no birth wast)    CONTENT      PERU                           0                    1        0    215
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                    0        0    265
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                    1        0    265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                    0      265    265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                    1        0    265
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                    0      197    241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                    1        6    241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                    0       37    241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                    1        1    241
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                    0      203    210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                    1        3    210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                    0        4    210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                    1        0    210
0-6 months (no birth wast)    MAL-ED       INDIA                          1                    0      102    227
0-6 months (no birth wast)    MAL-ED       INDIA                          1                    1        2    227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                    0      119    227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                    1        4    227
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                    0      232    234
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                    1        1    234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                    0        1    234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                    1        0    234
0-6 months (no birth wast)    MAL-ED       PERU                           1                    0       65    263
0-6 months (no birth wast)    MAL-ED       PERU                           1                    1        0    263
0-6 months (no birth wast)    MAL-ED       PERU                           0                    0      197    263
0-6 months (no birth wast)    MAL-ED       PERU                           0                    1        1    263
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                    0        4    249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                    1        0    249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                    0      242    249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                    1        3    249
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0    241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0    241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      238    241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        3    241
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                    0      224    584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                    1        3    584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                    0      351    584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                    1        6    584
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                    0      646    738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                    1        1    738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                    0       91    738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                    1        0    738
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                    0       50     52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                    1        0     52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                    0        2     52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                    1        0     52
6-24 months                   COHORTS      GUATEMALA                      1                    0       80    858
6-24 months                   COHORTS      GUATEMALA                      1                    1        0    858
6-24 months                   COHORTS      GUATEMALA                      0                    0      749    858
6-24 months                   COHORTS      GUATEMALA                      0                    1       29    858
6-24 months                   COHORTS      INDIA                          1                    0     1863   5025
6-24 months                   COHORTS      INDIA                          1                    1       40   5025
6-24 months                   COHORTS      INDIA                          0                    0     2969   5025
6-24 months                   COHORTS      INDIA                          0                    1      153   5025
6-24 months                   COHORTS      PHILIPPINES                    1                    0      140   1113
6-24 months                   COHORTS      PHILIPPINES                    1                    1        7   1113
6-24 months                   COHORTS      PHILIPPINES                    0                    0      889   1113
6-24 months                   COHORTS      PHILIPPINES                    0                    1       77   1113
6-24 months                   CONTENT      PERU                           1                    0      201    215
6-24 months                   CONTENT      PERU                           1                    1        0    215
6-24 months                   CONTENT      PERU                           0                    0       14    215
6-24 months                   CONTENT      PERU                           0                    1        0    215
6-24 months                   LCNI-5       MALAWI                         1                    0        3    801
6-24 months                   LCNI-5       MALAWI                         1                    1        0    801
6-24 months                   LCNI-5       MALAWI                         0                    0      790    801
6-24 months                   LCNI-5       MALAWI                         0                    1        8    801
6-24 months                   MAL-ED       BANGLADESH                     1                    0      197    240
6-24 months                   MAL-ED       BANGLADESH                     1                    1        5    240
6-24 months                   MAL-ED       BANGLADESH                     0                    0       38    240
6-24 months                   MAL-ED       BANGLADESH                     0                    1        0    240
6-24 months                   MAL-ED       BRAZIL                         1                    0      202    207
6-24 months                   MAL-ED       BRAZIL                         1                    1        1    207
6-24 months                   MAL-ED       BRAZIL                         0                    0        4    207
6-24 months                   MAL-ED       BRAZIL                         0                    1        0    207
6-24 months                   MAL-ED       INDIA                          1                    0      107    233
6-24 months                   MAL-ED       INDIA                          1                    1        1    233
6-24 months                   MAL-ED       INDIA                          0                    0      121    233
6-24 months                   MAL-ED       INDIA                          0                    1        4    233
6-24 months                   MAL-ED       NEPAL                          1                    0      232    235
6-24 months                   MAL-ED       NEPAL                          1                    1        2    235
6-24 months                   MAL-ED       NEPAL                          0                    0        1    235
6-24 months                   MAL-ED       NEPAL                          0                    1        0    235
6-24 months                   MAL-ED       PERU                           1                    0       65    263
6-24 months                   MAL-ED       PERU                           1                    1        0    263
6-24 months                   MAL-ED       PERU                           0                    0      195    263
6-24 months                   MAL-ED       PERU                           0                    1        3    263
6-24 months                   MAL-ED       SOUTH AFRICA                   1                    0        4    250
6-24 months                   MAL-ED       SOUTH AFRICA                   1                    1        0    250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                    0      236    250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                    1       10    250
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0    237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0    237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      232    237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        5    237
6-24 months                   NIH-Birth    BANGLADESH                     1                    0      194    542
6-24 months                   NIH-Birth    BANGLADESH                     1                    1       14    542
6-24 months                   NIH-Birth    BANGLADESH                     0                    0      300    542
6-24 months                   NIH-Birth    BANGLADESH                     0                    1       34    542
6-24 months                   NIH-Crypto   BANGLADESH                     1                    0      613    719
6-24 months                   NIH-Crypto   BANGLADESH                     1                    1       17    719
6-24 months                   NIH-Crypto   BANGLADESH                     0                    0       86    719
6-24 months                   NIH-Crypto   BANGLADESH                     0                    1        3    719
6-24 months                   PROVIDE      BANGLADESH                     1                    0       10     10
6-24 months                   PROVIDE      BANGLADESH                     1                    1        0     10
6-24 months                   PROVIDE      BANGLADESH                     0                    0        0     10
6-24 months                   PROVIDE      BANGLADESH                     0                    1        0     10


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1dc4dce0-9834-4ebe-8683-3cf2edb7024e/7e29c943-9f53-4ac6-99b3-b0e09f1c9213/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1dc4dce0-9834-4ebe-8683-3cf2edb7024e/7e29c943-9f53-4ac6-99b3-b0e09f1c9213/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1dc4dce0-9834-4ebe-8683-3cf2edb7024e/7e29c943-9f53-4ac6-99b3-b0e09f1c9213/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1dc4dce0-9834-4ebe-8683-3cf2edb7024e/7e29c943-9f53-4ac6-99b3-b0e09f1c9213/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         1                    NA                0.0295015   0.0220212   0.0369818
0-24 months (no birth wast)   COHORTS     INDIA         0                    NA                0.0602748   0.0520306   0.0685190
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    NA                0.0558659   0.0222074   0.0895245
0-24 months (no birth wast)   COHORTS     PHILIPPINES   0                    NA                0.0884692   0.0709136   0.1060247
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    NA                0.0729614   0.0395398   0.1063829
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    0                    NA                0.1002710   0.0695992   0.1309428
0-6 months (no birth wast)    COHORTS     INDIA         1                    NA                0.0123457   0.0072182   0.0174731
0-6 months (no birth wast)    COHORTS     INDIA         0                    NA                0.0200612   0.0149933   0.0251291
6-24 months                   COHORTS     INDIA         1                    NA                0.0210194   0.0145738   0.0274651
6-24 months                   COHORTS     INDIA         0                    NA                0.0490070   0.0414336   0.0565805
6-24 months                   COHORTS     PHILIPPINES   1                    NA                0.0476190   0.0131777   0.0820604
6-24 months                   COHORTS     PHILIPPINES   0                    NA                0.0797101   0.0626228   0.0967975
6-24 months                   NIH-Birth   BANGLADESH    1                    NA                0.0673077   0.0332262   0.1013892
6-24 months                   NIH-Birth   BANGLADESH    0                    NA                0.1017964   0.0693378   0.1342550


### Parameter: E(Y)


agecat                        studyid     country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         NA                   NA                0.0485681   0.0427068   0.0544294
0-24 months (no birth wast)   COHORTS     PHILIPPINES   NA                   NA                0.0835443   0.0677832   0.0993054
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    NA                   NA                0.0897010   0.0668555   0.1125465
0-6 months (no birth wast)    COHORTS     INDIA         NA                   NA                0.0171501   0.0134470   0.0208532
6-24 months                   COHORTS     INDIA         NA                   NA                0.0384080   0.0330939   0.0437221
6-24 months                   COHORTS     PHILIPPINES   NA                   NA                0.0754717   0.0599461   0.0909973
6-24 months                   NIH-Birth   BANGLADESH    NA                   NA                0.0885609   0.0646203   0.1125014


### Parameter: RR


agecat                        studyid     country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS     INDIA         0                    1                 2.043109   1.5316999   2.725269
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS     PHILIPPINES   0                    1                 1.583598   0.8397713   2.986270
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    0                    1                 1.374303   0.7922571   2.383958
0-6 months (no birth wast)    COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS     INDIA         0                    1                 1.624958   0.9993652   2.642164
6-24 months                   COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
6-24 months                   COHORTS     INDIA         0                    1                 2.331510   1.6538794   3.286781
6-24 months                   COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   COHORTS     PHILIPPINES   0                    1                 1.673913   0.7872542   3.559187
6-24 months                   NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   NIH-Birth   BANGLADESH    0                    1                 1.512404   0.8313663   2.751333


### Parameter: PAR


agecat                        studyid     country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         1                    NA                0.0190666    0.0121574   0.0259758
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    NA                0.0276784   -0.0045559   0.0599127
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    NA                0.0167396   -0.0110860   0.0445652
0-6 months (no birth wast)    COHORTS     INDIA         1                    NA                0.0048044    0.0003140   0.0092949
6-24 months                   COHORTS     INDIA         1                    NA                0.0173885    0.0111983   0.0235787
6-24 months                   COHORTS     PHILIPPINES   1                    NA                0.0278527   -0.0055227   0.0612280
6-24 months                   NIH-Birth   BANGLADESH    1                    NA                0.0212532   -0.0077843   0.0502907


### Parameter: PAF


agecat                        studyid     country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         1                    NA                0.3925742    0.2418270   0.5133483
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    NA                0.3313018   -0.1828008   0.6219505
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    NA                0.1866158   -0.1865444   0.4424196
0-6 months (no birth wast)    COHORTS     INDIA         1                    NA                0.2801402   -0.0257671   0.4948190
6-24 months                   COHORTS     INDIA         1                    NA                0.4527321    0.2813770   0.5832277
6-24 months                   COHORTS     PHILIPPINES   1                    NA                0.3690476   -0.2598982   0.6840214
6-24 months                   NIH-Birth   BANGLADESH    1                    NA                0.2399840   -0.1615330   0.5027052

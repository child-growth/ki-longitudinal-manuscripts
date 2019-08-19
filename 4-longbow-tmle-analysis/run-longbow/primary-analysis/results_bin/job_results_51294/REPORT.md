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

agecat      studyid                 country                        impsan    swasted   n_cell       n
----------  ----------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      179     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1        7     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       35     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        1     222
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0      163     167
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1        0     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        4     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0     167
Birth       ki0047075b-MAL-ED       INDIA                          1               0       89     188
Birth       ki0047075b-MAL-ED       INDIA                          1               1        1     188
Birth       ki0047075b-MAL-ED       INDIA                          0               0       93     188
Birth       ki0047075b-MAL-ED       INDIA                          0               1        5     188
Birth       ki0047075b-MAL-ED       NEPAL                          1               0      161     166
Birth       ki0047075b-MAL-ED       NEPAL                          1               1        4     166
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1     166
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0     166
Birth       ki0047075b-MAL-ED       PERU                           1               0       60     243
Birth       ki0047075b-MAL-ED       PERU                           1               1        0     243
Birth       ki0047075b-MAL-ED       PERU                           0               0      183     243
Birth       ki0047075b-MAL-ED       PERU                           0               1        0     243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        2     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      208     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        1     211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      108     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        1     109
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0        8      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1        1      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0       18      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1        1      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0       20      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1        1      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0        2      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0      23
Birth       ki1114097-CONTENT       PERU                           1               0        1       2
Birth       ki1114097-CONTENT       PERU                           1               1        0       2
Birth       ki1114097-CONTENT       PERU                           0               0        1       2
Birth       ki1114097-CONTENT       PERU                           0               1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      1               0       37     449
Birth       ki1135781-COHORTS       GUATEMALA                      1               1        6     449
Birth       ki1135781-COHORTS       GUATEMALA                      0               0      378     449
Birth       ki1135781-COHORTS       GUATEMALA                      0               1       28     449
Birth       ki1135781-COHORTS       INDIA                          1               0     1603    4461
Birth       ki1135781-COHORTS       INDIA                          1               1       82    4461
Birth       ki1135781-COHORTS       INDIA                          0               0     2644    4461
Birth       ki1135781-COHORTS       INDIA                          0               1      132    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1               0      170    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    1               1        7    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0               0      914    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0               1       35    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0    10561   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1      163   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     4874   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1       91   15689
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0      499     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1        4     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      179     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1        1     683
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      200     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1        2     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       38     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        0     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          1               0      106     233
6 months    ki0047075b-MAL-ED       INDIA                          1               1        2     233
6 months    ki0047075b-MAL-ED       INDIA                          0               0      122     233
6 months    ki0047075b-MAL-ED       INDIA                          0               1        3     233
6 months    ki0047075b-MAL-ED       NEPAL                          1               0      235     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236
6 months    ki0047075b-MAL-ED       PERU                           1               0       65     263
6 months    ki0047075b-MAL-ED       PERU                           1               1        0     263
6 months    ki0047075b-MAL-ED       PERU                           0               0      198     263
6 months    ki0047075b-MAL-ED       PERU                           0               1        0     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      237     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        3     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      238     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      203     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1        2     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      328     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1        3     536
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0      549     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1        5     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0       26     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        0     580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1        0     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       89     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0     704
6 months    ki1114097-CONTENT       PERU                           1               0      201     215
6 months    ki1114097-CONTENT       PERU                           1               1        0     215
6 months    ki1114097-CONTENT       PERU                           0               0       14     215
6 months    ki1114097-CONTENT       PERU                           0               1        0     215
6 months    ki1135781-COHORTS       GUATEMALA                      1               0       67     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               1        0     658
6 months    ki1135781-COHORTS       GUATEMALA                      0               0      586     658
6 months    ki1135781-COHORTS       GUATEMALA                      0               1        5     658
6 months    ki1135781-COHORTS       INDIA                          1               0     1845    4964
6 months    ki1135781-COHORTS       INDIA                          1               1       34    4964
6 months    ki1135781-COHORTS       INDIA                          0               0     2966    4964
6 months    ki1135781-COHORTS       INDIA                          0               1      119    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               1        0    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      930    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0               1       10    1083
6 months    ki1148112-LCNI-5        MALAWI                         1               0        3     812
6 months    ki1148112-LCNI-5        MALAWI                         1               1        0     812
6 months    ki1148112-LCNI-5        MALAWI                         0               0      809     812
6 months    ki1148112-LCNI-5        MALAWI                         0               1        0     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    11862   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1      153   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     4682   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1       76   16773
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     3714    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1       20    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0     1080    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1       13    4827
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0      181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       31     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1        0     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      165     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        1     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED       INDIA                          1               0      103     225
24 months   ki0047075b-MAL-ED       INDIA                          1               1        1     225
24 months   ki0047075b-MAL-ED       INDIA                          0               0      120     225
24 months   ki0047075b-MAL-ED       INDIA                          0               1        1     225
24 months   ki0047075b-MAL-ED       NEPAL                          1               0      227     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     228
24 months   ki0047075b-MAL-ED       PERU                           1               0       47     196
24 months   ki0047075b-MAL-ED       PERU                           1               1        0     196
24 months   ki0047075b-MAL-ED       PERU                           0               0      148     196
24 months   ki0047075b-MAL-ED       PERU                           0               1        1     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      231     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        0     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      207     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      168     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1        2     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      250     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1        8     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      545     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1        8     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       23     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        1     577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      429     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1        4     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       70     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0     503
24 months   ki1114097-CONTENT       PERU                           1               0      151     164
24 months   ki1114097-CONTENT       PERU                           1               1        0     164
24 months   ki1114097-CONTENT       PERU                           0               0       13     164
24 months   ki1114097-CONTENT       PERU                           0               1        0     164
24 months   ki1135781-COHORTS       GUATEMALA                      1               0       77     903
24 months   ki1135781-COHORTS       GUATEMALA                      1               1        0     903
24 months   ki1135781-COHORTS       GUATEMALA                      0               0      822     903
24 months   ki1135781-COHORTS       GUATEMALA                      0               1        4     903
24 months   ki1135781-COHORTS       INDIA                          1               0     1446    3724
24 months   ki1135781-COHORTS       INDIA                          1               1       11    3724
24 months   ki1135781-COHORTS       INDIA                          0               0     2237    3724
24 months   ki1135781-COHORTS       INDIA                          0               1       30    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    1               0      124     993
24 months   ki1135781-COHORTS       PHILIPPINES                    1               1        0     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      852     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0               1       17     993
24 months   ki1148112-LCNI-5        MALAWI                         1               0        2     556
24 months   ki1148112-LCNI-5        MALAWI                         1               1        0     556
24 months   ki1148112-LCNI-5        MALAWI                         0               0      553     556
24 months   ki1148112-LCNI-5        MALAWI                         0               1        1     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0     5864    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1      221    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     2397    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      111    8593
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3577    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1       94    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0     1024    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1       35    4730


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
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/7afef51b-c37e-4b77-b0ae-93ca9cd4121d/e0c12f82-f279-4c18-a3c2-b3f5de159e48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7afef51b-c37e-4b77-b0ae-93ca9cd4121d/e0c12f82-f279-4c18-a3c2-b3f5de159e48/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7afef51b-c37e-4b77-b0ae-93ca9cd4121d/e0c12f82-f279-4c18-a3c2-b3f5de159e48/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7afef51b-c37e-4b77-b0ae-93ca9cd4121d/e0c12f82-f279-4c18-a3c2-b3f5de159e48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     1                    NA                0.1395349   0.0358522   0.2432175
Birth       ki1135781-COHORTS   GUATEMALA     0                    NA                0.0689655   0.0442899   0.0936411
Birth       ki1135781-COHORTS   INDIA         1                    NA                0.0499314   0.0390672   0.0607956
Birth       ki1135781-COHORTS   INDIA         0                    NA                0.0464997   0.0385368   0.0544626
Birth       ki1135781-COHORTS   PHILIPPINES   1                    NA                0.0395480   0.0108234   0.0682727
Birth       ki1135781-COHORTS   PHILIPPINES   0                    NA                0.0368809   0.0248846   0.0488773
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0153261   0.0125726   0.0180796
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0181503   0.0138905   0.0224100
6 months    ki1135781-COHORTS   INDIA         1                    NA                0.0198404   0.0132742   0.0264066
6 months    ki1135781-COHORTS   INDIA         0                    NA                0.0371947   0.0305440   0.0438455
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0127756   0.0103119   0.0152392
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0161353   0.0118340   0.0204367
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    NA                0.0053497   0.0020613   0.0086382
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    NA                0.0118766   0.0050183   0.0187350
24 months   ki1135781-COHORTS   INDIA         1                    NA                0.0080317   0.0032451   0.0128183
24 months   ki1135781-COHORTS   INDIA         0                    NA                0.0132109   0.0084856   0.0179361
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0366177   0.0312605   0.0419750
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0432023   0.0333073   0.0530972
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    NA                0.0258703   0.0200116   0.0317290
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    NA                0.0301390   0.0195269   0.0407511


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0757238   0.0512261   0.1002216
Birth       ki1135781-COHORTS   INDIA         NA                   NA                0.0479713   0.0416994   0.0542432
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0373002   0.0262270   0.0483734
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0161897   0.0138244   0.0185550
6 months    ki1135781-COHORTS   INDIA         NA                   NA                0.0308219   0.0260134   0.0356304
6 months    kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0136529   0.0115802   0.0157256
6 months    kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0068365   0.0038719   0.0098012
24 months   ki1135781-COHORTS   INDIA         NA                   NA                0.0110097   0.0076578   0.0143615
24 months   kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0386361   0.0343091   0.0429631
24 months   kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0272727   0.0220640   0.0324815


### Parameter: RR


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS   GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   GUATEMALA     0                    1                 0.4942529   0.2166606   1.127505
Birth       ki1135781-COHORTS   INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   INDIA         0                    1                 0.9312721   0.7060949   1.228259
Birth       ki1135781-COHORTS   PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   PHILIPPINES   0                    1                 0.9325606   0.4207770   2.066817
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    1                 1.1842701   0.8938316   1.569083
6 months    ki1135781-COHORTS   INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   INDIA         0                    1                 1.8746974   1.2868237   2.731136
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    1                 1.2629865   0.9177249   1.738141
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    1                 2.2200376   0.9487400   5.194855
24 months   ki1135781-COHORTS   INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS   INDIA         0                    1                 1.6448446   0.8207833   3.296258
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    1                 1.1798183   0.8964217   1.552809
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    1                 1.1650041   0.7637732   1.777012


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     1                    NA                -0.0638111   -0.1602019   0.0325798
Birth       ki1135781-COHORTS   INDIA         1                    NA                -0.0019601   -0.0106877   0.0067675
Birth       ki1135781-COHORTS   PHILIPPINES   1                    NA                -0.0022478   -0.0284837   0.0239880
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    NA                 0.0008636   -0.0006638   0.0023909
6 months    ki1135781-COHORTS   INDIA         1                    NA                 0.0109815    0.0049143   0.0170488
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    NA                 0.0008773   -0.0003234   0.0020781
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    NA                 0.0014868   -0.0002510   0.0032246
24 months   ki1135781-COHORTS   INDIA         1                    NA                 0.0029780   -0.0012224   0.0071784
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    NA                 0.0020184   -0.0010782   0.0051150
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    NA                 0.0014024   -0.0013556   0.0041604


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     1                    NA                -0.8426813   -2.6359609   0.0661412
Birth       ki1135781-COHORTS   INDIA         1                    NA                -0.0408597   -0.2396082   0.1260231
Birth       ki1135781-COHORTS   PHILIPPINES   1                    NA                -0.0602637   -1.0579534   0.4537490
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    NA                 0.0533401   -0.0458069   0.1430875
6 months    ki1135781-COHORTS   INDIA         1                    NA                 0.3562894    0.1372901   0.5196956
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    NA                 0.0642606   -0.0292560   0.1492804
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    NA                 0.2174777   -0.0943332   0.4404435
24 months   ki1135781-COHORTS   INDIA         1                    NA                 0.2704889   -0.2161988   0.5624183
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    NA                 0.0522408   -0.0317178   0.1293671
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    NA                 0.0514218   -0.0556654   0.1476460

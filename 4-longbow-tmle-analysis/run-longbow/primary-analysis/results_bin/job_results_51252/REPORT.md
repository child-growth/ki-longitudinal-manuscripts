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

agecat      studyid                 country                        impsan    wasted   n_cell       n
----------  ----------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1              0      152     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     1              1       34     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0              0       32     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0              1        4     222
Birth       ki0047075b-MAL-ED       BRAZIL                         1              0      158     167
Birth       ki0047075b-MAL-ED       BRAZIL                         1              1        5     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0              0        3     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1        1     167
Birth       ki0047075b-MAL-ED       INDIA                          1              0       72     188
Birth       ki0047075b-MAL-ED       INDIA                          1              1       18     188
Birth       ki0047075b-MAL-ED       INDIA                          0              0       86     188
Birth       ki0047075b-MAL-ED       INDIA                          0              1       12     188
Birth       ki0047075b-MAL-ED       NEPAL                          1              0      145     166
Birth       ki0047075b-MAL-ED       NEPAL                          1              1       20     166
Birth       ki0047075b-MAL-ED       NEPAL                          0              0        1     166
Birth       ki0047075b-MAL-ED       NEPAL                          0              1        0     166
Birth       ki0047075b-MAL-ED       PERU                           1              0       60     243
Birth       ki0047075b-MAL-ED       PERU                           1              1        0     243
Birth       ki0047075b-MAL-ED       PERU                           0              0      179     243
Birth       ki0047075b-MAL-ED       PERU                           0              1        4     243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0        2     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              1        0     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0              0      196     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0              1       13     211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      107     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        2     109
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              0        6      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              1        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0              0       15      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0              1        4      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1              0       18      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1              1        3      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              0        2      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              1        0      23
Birth       ki1114097-CONTENT       PERU                           1              0        1       2
Birth       ki1114097-CONTENT       PERU                           1              1        0       2
Birth       ki1114097-CONTENT       PERU                           0              0        1       2
Birth       ki1114097-CONTENT       PERU                           0              1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      1              0       28     449
Birth       ki1135781-COHORTS       GUATEMALA                      1              1       15     449
Birth       ki1135781-COHORTS       GUATEMALA                      0              0      312     449
Birth       ki1135781-COHORTS       GUATEMALA                      0              1       94     449
Birth       ki1135781-COHORTS       INDIA                          1              0     1409    4461
Birth       ki1135781-COHORTS       INDIA                          1              1      276    4461
Birth       ki1135781-COHORTS       INDIA                          0              0     2276    4461
Birth       ki1135781-COHORTS       INDIA                          0              1      500    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1              0      145    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    1              1       32    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0              0      814    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0              1      135    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1              0     9704   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1              1     1020   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0              0     4480   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0              1      485   15689
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1              0      480     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1              1       23     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0              0      167     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0              1       13     683
6 months    ki0047075b-MAL-ED       BANGLADESH                     1              0      194     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1              1        8     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0              0       38     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0              1        0     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1              0      204     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1              1        1     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          1              0       98     233
6 months    ki0047075b-MAL-ED       INDIA                          1              1       10     233
6 months    ki0047075b-MAL-ED       INDIA                          0              0      117     233
6 months    ki0047075b-MAL-ED       INDIA                          0              1        8     233
6 months    ki0047075b-MAL-ED       NEPAL                          1              0      231     236
6 months    ki0047075b-MAL-ED       NEPAL                          1              1        4     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1        0     236
6 months    ki0047075b-MAL-ED       PERU                           1              0       65     263
6 months    ki0047075b-MAL-ED       PERU                           1              1        0     263
6 months    ki0047075b-MAL-ED       PERU                           0              0      198     263
6 months    ki0047075b-MAL-ED       PERU                           0              1        0     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              0        4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              1        0     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0              0      233     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0              1        7     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      237     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        1     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1              0      194     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     1              1       11     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0              0      308     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0              1       23     536
6 months    ki1017093b-PROVIDE      BANGLADESH                     1              0      531     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     1              1       23     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0       25     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              1        1     580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1              0      599     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1              1       16     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0              0       84     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0              1        5     704
6 months    ki1114097-CONTENT       PERU                           1              0      201     215
6 months    ki1114097-CONTENT       PERU                           1              1        0     215
6 months    ki1114097-CONTENT       PERU                           0              0       14     215
6 months    ki1114097-CONTENT       PERU                           0              1        0     215
6 months    ki1135781-COHORTS       GUATEMALA                      1              0       66     658
6 months    ki1135781-COHORTS       GUATEMALA                      1              1        1     658
6 months    ki1135781-COHORTS       GUATEMALA                      0              0      571     658
6 months    ki1135781-COHORTS       GUATEMALA                      0              1       20     658
6 months    ki1135781-COHORTS       INDIA                          1              0     1697    4964
6 months    ki1135781-COHORTS       INDIA                          1              1      182    4964
6 months    ki1135781-COHORTS       INDIA                          0              0     2614    4964
6 months    ki1135781-COHORTS       INDIA                          0              1      471    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    1              0      140    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1              1        3    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0              0      884    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0              1       56    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              0        3     812
6 months    ki1148112-LCNI-5        MALAWI                         1              1        0     812
6 months    ki1148112-LCNI-5        MALAWI                         0              0      795     812
6 months    ki1148112-LCNI-5        MALAWI                         0              1       14     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1              0    11077   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1              1      938   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0              0     4278   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0              1      480   16773
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1              0     3550    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1              1      184    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0              0     1002    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0              1       91    4827
24 months   ki0047075b-MAL-ED       BANGLADESH                     1              0      165     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1              1       16     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0              0       26     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0              1        5     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1              0      163     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1              1        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              1        0     169
24 months   ki0047075b-MAL-ED       INDIA                          1              0       93     225
24 months   ki0047075b-MAL-ED       INDIA                          1              1       11     225
24 months   ki0047075b-MAL-ED       INDIA                          0              0      105     225
24 months   ki0047075b-MAL-ED       INDIA                          0              1       16     225
24 months   ki0047075b-MAL-ED       NEPAL                          1              0      222     228
24 months   ki0047075b-MAL-ED       NEPAL                          1              1        5     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1        0     228
24 months   ki0047075b-MAL-ED       PERU                           1              0       46     196
24 months   ki0047075b-MAL-ED       PERU                           1              1        1     196
24 months   ki0047075b-MAL-ED       PERU                           0              0      147     196
24 months   ki0047075b-MAL-ED       PERU                           0              1        2     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              0        4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              1        0     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0              0      230     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0              1        1     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      203     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        4     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1              0      155     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     1              1       15     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0              0      220     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0              1       38     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              0      492     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              1       61     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       20     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              1        4     577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1              0      392     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1              1       41     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0              0       66     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0              1        4     503
24 months   ki1114097-CONTENT       PERU                           1              0      151     164
24 months   ki1114097-CONTENT       PERU                           1              1        0     164
24 months   ki1114097-CONTENT       PERU                           0              0       13     164
24 months   ki1114097-CONTENT       PERU                           0              1        0     164
24 months   ki1135781-COHORTS       GUATEMALA                      1              0       75     903
24 months   ki1135781-COHORTS       GUATEMALA                      1              1        2     903
24 months   ki1135781-COHORTS       GUATEMALA                      0              0      783     903
24 months   ki1135781-COHORTS       GUATEMALA                      0              1       43     903
24 months   ki1135781-COHORTS       INDIA                          1              0     1366    3724
24 months   ki1135781-COHORTS       INDIA                          1              1       91    3724
24 months   ki1135781-COHORTS       INDIA                          0              0     2002    3724
24 months   ki1135781-COHORTS       INDIA                          0              1      265    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    1              0      118     993
24 months   ki1135781-COHORTS       PHILIPPINES                    1              1        6     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0              0      798     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0              1       71     993
24 months   ki1148112-LCNI-5        MALAWI                         1              0        2     556
24 months   ki1148112-LCNI-5        MALAWI                         1              1        0     556
24 months   ki1148112-LCNI-5        MALAWI                         0              0      544     556
24 months   ki1148112-LCNI-5        MALAWI                         0              1       10     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1              0     4801    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1              1     1284    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0              0     1919    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0              1      589    8593
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1              0     2988    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1              1      683    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0              0      822    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0              1      237    4730


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/a5637a8c-8b3c-44fd-b524-9cf933eb5d15/325895ed-c644-42e1-989d-1f5f22f50e29/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a5637a8c-8b3c-44fd-b524-9cf933eb5d15/325895ed-c644-42e1-989d-1f5f22f50e29/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a5637a8c-8b3c-44fd-b524-9cf933eb5d15/325895ed-c644-42e1-989d-1f5f22f50e29/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a5637a8c-8b3c-44fd-b524-9cf933eb5d15/325895ed-c644-42e1-989d-1f5f22f50e29/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                0.1977891   0.1138219   0.2817562
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                0.1209972   0.0557752   0.1862192
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                0.3553967   0.2003668   0.5104265
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                0.2317252   0.1905870   0.2728634
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1700429   0.1509658   0.1891200
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1767914   0.1623200   0.1912629
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1946546   0.1337145   0.2555946
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                0.1415879   0.1193635   0.1638122
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0963752   0.0899579   0.1027925
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0996892   0.0898379   0.1095405
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0458259   0.0249108   0.0667410
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0713235   0.0299319   0.1127151
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0925926   0.0378079   0.1473773
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0640000   0.0210013   0.1069987
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0539491   0.0231610   0.0847371
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0702651   0.0427262   0.0978041
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0260163   0.0134265   0.0386060
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1093831   0.0938611   0.1249052
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.1466116   0.1339699   0.1592532
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0794765   0.0737560   0.0851970
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1014743   0.0899095   0.1130392
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0499661   0.0402478   0.0596843
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0882159   0.0648457   0.1115861
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.0883978   0.0469445   0.1298511
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1612903   0.0315115   0.2910692
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0966539   0.0372253   0.1560824
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1205486   0.0597447   0.1813525
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0863802   0.0431885   0.1295719
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1441515   0.1006557   0.1876474
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0717941   0.0577177   0.0858704
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1106775   0.0977357   0.1236193
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0483871   0.0105994   0.0861748
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0817031   0.0634823   0.0999239
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2148179   0.2031715   0.2264644
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2393533   0.2200143   0.2586923
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1866080   0.1713443   0.2018717
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2253965   0.1967108   0.2540823


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                0.1595745   0.1070866   0.2120623
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                0.2427617   0.2030594   0.2824640
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.1739520   0.1628271   0.1850770
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.1483126   0.1275443   0.1690809
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0959271   0.0907227   0.1011315
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0298295   0.0172543   0.0424048
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.1315471   0.1221436   0.1409506
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0845406   0.0797299   0.0893513
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0569712   0.0481278   0.0658146
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0955961   0.0861511   0.1050412
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0775428   0.0608996   0.0941860
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2179681   0.2080916   0.2278446
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1945032   0.1812962   0.2077102


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                 0.6117487   0.3080806   1.214735
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 0.6520185   0.4068071   1.045036
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 1.0396874   0.9049514   1.194484
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 0.7273802   0.5125734   1.032207
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.0343864   0.9208551   1.161915
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.5564001   0.7449427   3.251768
6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 0.6912000   0.2823598   1.692017
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.3024348   0.6512561   2.604715
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 2.1594101   0.8104761   5.753473
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.3403487   1.1352800   1.582460
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2767844   1.1188970   1.456951
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.7655168   1.2727587   2.449050
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.8245968   0.7189612   4.630505
24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.2472197   0.5642956   2.756635
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.6688034   0.9296301   2.995713
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.5415960   1.2277768   1.935627
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.6885309   0.7495319   3.803889
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1142148   1.0141294   1.224178
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2078609   1.0336489   1.411435


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -0.0382146   -0.0944060   0.0179768
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1126350   -0.2595006   0.0342306
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.0039092   -0.0117477   0.0195661
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0463420   -0.1018163   0.0091324
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0004481   -0.0038478   0.0029516
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0068827   -0.0056308   0.0193962
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0153394   -0.0527469   0.0220682
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0094838   -0.0159795   0.0349471
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0038133   -0.0024884   0.0101150
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0221640    0.0087393   0.0355887
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0050641    0.0020484   0.0080799
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0070051    0.0019995   0.0120108
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0106588   -0.0095637   0.0308813
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0233461   -0.0226488   0.0693411
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0374516    0.0002047   0.0746985
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0238021    0.0114218   0.0361823
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0291557   -0.0075634   0.0658748
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0031502   -0.0030651   0.0093654
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0078952    0.0004953   0.0152951


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -0.2394783   -0.6381830   0.0621888
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.4639735   -1.2115626   0.0309031
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.0224726   -0.0717985   0.1084520
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.3124613   -0.7434669   0.0119946
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0046713   -0.0407267   0.0301350
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.1305801   -0.1378741   0.3356990
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.1985597   -0.7855318   0.1954524
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1495088   -0.3587848   0.4676601
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.1278358   -0.1028159   0.3102472
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.1684871    0.0606009   0.2639831
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0599018    0.0233166   0.0951167
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.1229593    0.0303542   0.2067203
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.1076033   -0.1170077   0.2870488
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.1945512   -0.2951001   0.4990751
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.3024393   -0.0633211   0.5423857
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.2489855    0.1104290   0.3659610
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3759950   -0.3196083   0.7049259
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0144524   -0.0144834   0.0425630
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0405915    0.0016227   0.0780393

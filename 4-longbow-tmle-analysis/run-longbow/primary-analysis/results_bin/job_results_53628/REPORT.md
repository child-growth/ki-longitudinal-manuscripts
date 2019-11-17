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

agecat      studyid                 country                        impsan    swasted   n_cell       n
----------  ----------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      161     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1        7     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       32     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        1     201
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0       56      57
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1        0      57
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        1      57
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0      57
Birth       ki0047075b-MAL-ED       INDIA                          1               0       14      39
Birth       ki0047075b-MAL-ED       INDIA                          1               1        0      39
Birth       ki0047075b-MAL-ED       INDIA                          0               0       25      39
Birth       ki0047075b-MAL-ED       INDIA                          0               1        0      39
Birth       ki0047075b-MAL-ED       NEPAL                          1               0       23      25
Birth       ki0047075b-MAL-ED       NEPAL                          1               1        1      25
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1      25
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0      25
Birth       ki0047075b-MAL-ED       PERU                           1               0       50     203
Birth       ki0047075b-MAL-ED       PERU                           1               1        0     203
Birth       ki0047075b-MAL-ED       PERU                           0               0      153     203
Birth       ki0047075b-MAL-ED       PERU                           0               1        0     203
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        0      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0       94      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        0      94
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      110     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     110
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0      202     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1       20     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0      335     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1       18     575
Birth       ki1017093b-PROVIDE      BANGLADESH                     1               0       41      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     1               1        2      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0               0        2      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0               1        0      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0      570     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1       40     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0       80     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1        6     696
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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0    12185   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1      228   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     5457   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1      121   17991
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0     1836    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1       23    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      527    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1        8    2394
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      200     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1        2     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       38     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        0     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          1               0      105     233
6 months    ki0047075b-MAL-ED       INDIA                          1               1        3     233
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
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      203     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1        2     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      328     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1        4     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0       11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1        0      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0        0      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        0      11
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
24 months   ki0047075b-MAL-ED       PERU                           0               0      147     196
24 months   ki0047075b-MAL-ED       PERU                           0               1        2     196
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
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0        9       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1        0       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0        0       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        0       9
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
![](/tmp/29a79166-e3ee-4bc5-8791-3ac8e7e74601/01da0a6d-40ef-4817-b8e5-e77d2cfc9ef2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/29a79166-e3ee-4bc5-8791-3ac8e7e74601/01da0a6d-40ef-4817-b8e5-e77d2cfc9ef2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/29a79166-e3ee-4bc5-8791-3ac8e7e74601/01da0a6d-40ef-4817-b8e5-e77d2cfc9ef2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/29a79166-e3ee-4bc5-8791-3ac8e7e74601/01da0a6d-40ef-4817-b8e5-e77d2cfc9ef2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0860447   0.0483648   0.1237246
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0496248   0.0266187   0.0726309
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0655738   0.0459161   0.0852315
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0697674   0.0158867   0.1236481
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                0.1395349   0.0358522   0.2432175
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                0.0689655   0.0442899   0.0936411
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0504219   0.0392003   0.0616435
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.0476121   0.0394523   0.0557720
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0395480   0.0108234   0.0682727
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0368809   0.0248846   0.0488773
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0183192   0.0155242   0.0211142
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0200178   0.0156311   0.0244046
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0123722   0.0061302   0.0186143
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0149533   0.0037914   0.0261151
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0196281   0.0130326   0.0262236
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0378798   0.0310925   0.0446672
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0131185   0.0105819   0.0156552
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0175253   0.0124868   0.0225639
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0053625   0.0020605   0.0086644
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0118397   0.0050062   0.0186732
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0081659   0.0033281   0.0130038
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.0132355   0.0085074   0.0179637
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0372259   0.0317669   0.0426848
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0412660   0.0325181   0.0500139
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0258438   0.0199840   0.0317037
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0297804   0.0192792   0.0402815


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0660920   0.0476213   0.0845626
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                0.0757238   0.0512261   0.1002216
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.0479713   0.0416994   0.0542432
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0373002   0.0262270   0.0483734
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0193986   0.0169876   0.0218095
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0129490   0.0075258   0.0183723
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0308219   0.0260134   0.0356304
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0136529   0.0115802   0.0157256
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0068365   0.0038719   0.0098012
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0110097   0.0076578   0.0143615
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0386361   0.0343091   0.0429631
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0272727   0.0220640   0.0324815


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.5767330   0.3046813   1.091701
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.0639535   0.4646640   2.436162
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 0.4942529   0.2166606   1.127505
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 0.9442752   0.7130822   1.250425
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 0.9325606   0.4207770   2.066817
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.0927252   0.8370961   1.426417
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2086144   0.4883313   2.991307
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.9298788   1.3185883   2.824560
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.3359198   0.9511621   1.876317
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 2.2078838   0.9426193   5.171495
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.6208260   0.8114021   3.237701
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1085306   0.8544783   1.438117
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1523189   0.7549104   1.758936


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0199577   -0.0471788   0.0072633
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0005182   -0.0065695   0.0076059
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0638111   -0.1602019   0.0325798
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0024506   -0.0115221   0.0066210
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0022478   -0.0284837   0.0239880
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0010794   -0.0006364   0.0027952
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0005768   -0.0022961   0.0034497
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0111938    0.0051027   0.0172850
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0005344   -0.0007226   0.0017913
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0014741   -0.0002697   0.0032179
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0028438   -0.0013999   0.0070874
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0014102   -0.0017788   0.0045993
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0014289   -0.0013326   0.0041904


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3019919   -0.7700897   0.0423181
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0078403   -0.1053879   0.1094703
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.8426813   -2.6359609   0.0661412
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0510844   -0.2581065   0.1218721
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0602637   -1.0579534   0.4537490
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0556429   -0.0365111   0.1396037
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0445435   -0.2071576   0.2437632
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.3631775    0.1426009   0.5270080
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0391383   -0.0583874   0.1276774
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.2156192   -0.0977964   0.4395561
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.2582964   -0.2334445   0.5539935
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0365004   -0.0499355   0.1158206
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0523924   -0.0548568   0.1487373

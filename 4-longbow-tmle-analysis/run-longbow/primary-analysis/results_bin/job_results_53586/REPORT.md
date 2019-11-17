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

agecat      studyid                 country                        impsan    wasted   n_cell       n
----------  ----------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1              0      138     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     1              1       30     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     0              0       28     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     0              1        5     201
Birth       ki0047075b-MAL-ED       BRAZIL                         1              0       54      57
Birth       ki0047075b-MAL-ED       BRAZIL                         1              1        2      57
Birth       ki0047075b-MAL-ED       BRAZIL                         0              0        1      57
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1        0      57
Birth       ki0047075b-MAL-ED       INDIA                          1              0       11      39
Birth       ki0047075b-MAL-ED       INDIA                          1              1        3      39
Birth       ki0047075b-MAL-ED       INDIA                          0              0       23      39
Birth       ki0047075b-MAL-ED       INDIA                          0              1        2      39
Birth       ki0047075b-MAL-ED       NEPAL                          1              0       22      25
Birth       ki0047075b-MAL-ED       NEPAL                          1              1        2      25
Birth       ki0047075b-MAL-ED       NEPAL                          0              0        1      25
Birth       ki0047075b-MAL-ED       NEPAL                          0              1        0      25
Birth       ki0047075b-MAL-ED       PERU                           1              0       50     203
Birth       ki0047075b-MAL-ED       PERU                           1              1        0     203
Birth       ki0047075b-MAL-ED       PERU                           0              0      149     203
Birth       ki0047075b-MAL-ED       PERU                           0              1        4     203
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0        0      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              1        0      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0              0       84      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0              1       10      94
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      109     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        1     110
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              0      157     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              1       65     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     0              0      250     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     0              1      103     575
Birth       ki1017093b-PROVIDE      BANGLADESH                     1              0       33      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     1              1       10      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              0        2      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              1        0      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1              0      462     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1              1      148     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              0       64     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              1       22     696
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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1              0    11058   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1              1     1355   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0              0     4961   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0              1      617   17991
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1              0     1681    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1              1      178    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0              0      475    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0              1       60    2394
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
6 months    ki1017093-NIH-Birth     BANGLADESH                     1              0      194     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1              1       11     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0              0      308     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0              1       24     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1              0       11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     1              1        0      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0        0      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              1        0      11
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
24 months   ki0047075b-MAL-ED       PERU                           0              0      146     196
24 months   ki0047075b-MAL-ED       PERU                           0              1        3     196
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
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              0        7       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              1        2       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0        0       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              1        0       9
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
![](/tmp/84a049d4-18aa-494b-95a3-003cc141b1dd/4444aa67-e5f2-4fdc-ba29-290a73d7d3ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84a049d4-18aa-494b-95a3-003cc141b1dd/4444aa67-e5f2-4fdc-ba29-290a73d7d3ba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84a049d4-18aa-494b-95a3-003cc141b1dd/4444aa67-e5f2-4fdc-ba29-290a73d7d3ba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84a049d4-18aa-494b-95a3-003cc141b1dd/4444aa67-e5f2-4fdc-ba29-290a73d7d3ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1785714   0.1205127   0.2366301
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1515152   0.0288774   0.2741529
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2970699   0.2371519   0.3569879
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2914688   0.2439771   0.3389604
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2428905   0.2088474   0.2769336
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2461285   0.1522999   0.3399571
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                0.3524174   0.1954225   0.5094124
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                0.2317905   0.1906405   0.2729406
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1701377   0.1511659   0.1891095
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1764338   0.1619904   0.1908773
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1859080   0.1248770   0.2469389
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                0.1415385   0.1193637   0.1637134
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1094070   0.1031471   0.1156669
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1122921   0.1027202   0.1218640
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0958882   0.0788221   0.1129543
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1115646   0.0772204   0.1459087
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0925926   0.0378079   0.1473773
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0640000   0.0210013   0.1069987
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0531149   0.0220277   0.0842021
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0721354   0.0440883   0.1001825
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0260163   0.0134265   0.0386060
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1082919   0.0929364   0.1236475
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.1467859   0.1341268   0.1594450
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0791494   0.0734124   0.0848864
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0983127   0.0877209   0.1089046
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0499159   0.0400970   0.0597347
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0886630   0.0660570   0.1112691
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.0883978   0.0469445   0.1298511
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1612903   0.0315115   0.2910692
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1145412   0.0558005   0.1732819
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1390373   0.0782029   0.1998717
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0912347   0.0477606   0.1347089
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1459803   0.1026145   0.1893461
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0720878   0.0577626   0.0864129
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1110248   0.0979844   0.1240652
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0483871   0.0105994   0.0861748
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0817031   0.0634823   0.0999239
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2138209   0.2023403   0.2253016
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2343904   0.2156914   0.2530894
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1866478   0.1712328   0.2020627
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2249848   0.1953805   0.2545892


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1741294   0.1215730   0.2266857
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2442529   0.2123108   0.2761950
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                0.2427617   0.2030594   0.2824640
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.1739520   0.1628271   0.1850770
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.1483126   0.1275443   0.1690809
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1096104   0.1044820   0.1147387
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0994152   0.0840401   0.1147903
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
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
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8484848   0.3546686   2.029857
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9811454   0.7572588   1.271225
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.0133314   0.6754121   1.520317
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 0.6577158   0.4070715   1.062688
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 1.0370059   0.9030434   1.190841
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 0.7613366   0.5292580   1.095181
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.0263702   0.9280206   1.135143
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1634860   0.8199765   1.650901
6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 0.6912000   0.2823598   1.692017
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.3581009   0.6721718   2.743998
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 2.1594101   0.8104761   5.753473
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.3554651   1.1482633   1.600056
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2421157   1.0945863   1.409529
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.7762498   1.2882612   2.449087
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.8245968   0.7189612   4.630505
24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.2138625   0.6170601   2.387875
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.6000519   0.9126150   2.805308
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.5401336   1.2233601   1.938932
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.6885309   0.7495319   3.803889
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.0961996   0.9991353   1.202693
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2053978   1.0272102   1.414495


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0044421   -0.0267622   0.0178781
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0048960   -0.0519026   0.0421107
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0013624   -0.0106979   0.0134228
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1096558   -0.2586957   0.0393842
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.0038143   -0.0117318   0.0193604
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0375953   -0.0931668   0.0179761
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0002034   -0.0030867   0.0034935
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0035270   -0.0048155   0.0118695
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0153394   -0.0527469   0.0220682
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0120620   -0.0138759   0.0379999
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0038133   -0.0024884   0.0101150
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0232552    0.0099919   0.0365185
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0053912    0.0024044   0.0083780
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0070553    0.0020185   0.0120922
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0106588   -0.0095637   0.0308813
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0054588   -0.0402025   0.0511201
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0325970   -0.0047197   0.0699138
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0235083    0.0108929   0.0361238
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0291557   -0.0075634   0.0658748
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0041472   -0.0019101   0.0102045
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0078554    0.0003377   0.0153730


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0255102   -0.1618982   0.0948681
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0167570   -0.1910897   0.1320596
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0055779   -0.0450439   0.0537476
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.4517012   -1.2144731   0.0483350
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.0219273   -0.0716406   0.1073255
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.2534872   -0.6882109   0.0692927
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0018556   -0.0286224   0.0314305
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0354775   -0.0520481   0.1157215
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.1985597   -0.7855318   0.1954524
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1850657   -0.3224561   0.4978148
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.1278358   -0.1028159   0.3102472
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.1767823    0.0702641   0.2710970
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0637708    0.0274622   0.0987239
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.1238406    0.0302151   0.2084273
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.1076033   -0.1170077   0.2870488
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0454898   -0.4197858   0.3582907
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.2632365   -0.0995147   0.5063090
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.2459132    0.1042900   0.3651439
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3759950   -0.3196083   0.7049259
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0190265   -0.0091563   0.0464223
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0403869    0.0007505   0.0784511

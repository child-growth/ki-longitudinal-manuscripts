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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    swasted   n_cell       n  outcome_variable 
----------  ----------------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      161     201  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1        7     201  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       32     201  swasted          
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        1     201  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0       56      57  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1        0      57  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        1      57  swasted          
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0      57  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          1               0       14      39  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          1               1        0      39  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          0               0       25      39  swasted          
Birth       ki0047075b-MAL-ED       INDIA                          0               1        0      39  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          1               0       23      25  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          1               1        1      25  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1      25  swasted          
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0      25  swasted          
Birth       ki0047075b-MAL-ED       PERU                           1               0       50     203  swasted          
Birth       ki0047075b-MAL-ED       PERU                           1               1        0     203  swasted          
Birth       ki0047075b-MAL-ED       PERU                           0               0      153     203  swasted          
Birth       ki0047075b-MAL-ED       PERU                           0               1        0     203  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        0      94  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0      94  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0       94      94  swasted          
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        0      94  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     110  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     110  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      110     110  swasted          
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     110  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0      202     575  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1       20     575  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0      335     575  swasted          
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1       18     575  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     1               0       41      45  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     1               1        2      45  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     0               0        2      45  swasted          
Birth       ki1017093b-PROVIDE      BANGLADESH                     0               1        0      45  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0      570     696  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1       40     696  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0       80     696  swasted          
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1        6     696  swasted          
Birth       ki1114097-CONTENT       PERU                           1               0        1       2  swasted          
Birth       ki1114097-CONTENT       PERU                           1               1        0       2  swasted          
Birth       ki1114097-CONTENT       PERU                           0               0        1       2  swasted          
Birth       ki1114097-CONTENT       PERU                           0               1        0       2  swasted          
Birth       ki1135781-COHORTS       GUATEMALA                      1               0       37     449  swasted          
Birth       ki1135781-COHORTS       GUATEMALA                      1               1        6     449  swasted          
Birth       ki1135781-COHORTS       GUATEMALA                      0               0      378     449  swasted          
Birth       ki1135781-COHORTS       GUATEMALA                      0               1       28     449  swasted          
Birth       ki1135781-COHORTS       INDIA                          1               0     1603    4461  swasted          
Birth       ki1135781-COHORTS       INDIA                          1               1       82    4461  swasted          
Birth       ki1135781-COHORTS       INDIA                          0               0     2644    4461  swasted          
Birth       ki1135781-COHORTS       INDIA                          0               1      132    4461  swasted          
Birth       ki1135781-COHORTS       PHILIPPINES                    1               0      170    1126  swasted          
Birth       ki1135781-COHORTS       PHILIPPINES                    1               1        7    1126  swasted          
Birth       ki1135781-COHORTS       PHILIPPINES                    0               0      914    1126  swasted          
Birth       ki1135781-COHORTS       PHILIPPINES                    0               1       35    1126  swasted          
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0    12185   17991  swasted          
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1      228   17991  swasted          
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     5457   17991  swasted          
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1      121   17991  swasted          
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0     1836    2394  swasted          
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1       23    2394  swasted          
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      527    2394  swasted          
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1        8    2394  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      200     240  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1        2     240  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       38     240  swasted          
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        0     240  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      205     209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        0     209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     209  swasted          
6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     209  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          1               0      105     233  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          1               1        3     233  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          0               0      122     233  swasted          
6 months    ki0047075b-MAL-ED       INDIA                          0               1        3     233  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          1               0      235     236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          1               1        0     236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236  swasted          
6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236  swasted          
6 months    ki0047075b-MAL-ED       PERU                           1               0       65     263  swasted          
6 months    ki0047075b-MAL-ED       PERU                           1               1        0     263  swasted          
6 months    ki0047075b-MAL-ED       PERU                           0               0      198     263  swasted          
6 months    ki0047075b-MAL-ED       PERU                           0               1        0     263  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     244  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     244  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      237     244  swasted          
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        3     244  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     238  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     238  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      238     238  swasted          
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     238  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      203     537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1        2     537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      328     537  swasted          
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1        4     537  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0       11      11  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1        0      11  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0        0      11  swasted          
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        0      11  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      615     704  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1        0     704  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       89     704  swasted          
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0     704  swasted          
6 months    ki1114097-CONTENT       PERU                           1               0      201     215  swasted          
6 months    ki1114097-CONTENT       PERU                           1               1        0     215  swasted          
6 months    ki1114097-CONTENT       PERU                           0               0       14     215  swasted          
6 months    ki1114097-CONTENT       PERU                           0               1        0     215  swasted          
6 months    ki1135781-COHORTS       GUATEMALA                      1               0       67     658  swasted          
6 months    ki1135781-COHORTS       GUATEMALA                      1               1        0     658  swasted          
6 months    ki1135781-COHORTS       GUATEMALA                      0               0      586     658  swasted          
6 months    ki1135781-COHORTS       GUATEMALA                      0               1        5     658  swasted          
6 months    ki1135781-COHORTS       INDIA                          1               0     1845    4964  swasted          
6 months    ki1135781-COHORTS       INDIA                          1               1       34    4964  swasted          
6 months    ki1135781-COHORTS       INDIA                          0               0     2966    4964  swasted          
6 months    ki1135781-COHORTS       INDIA                          0               1      119    4964  swasted          
6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      143    1083  swasted          
6 months    ki1135781-COHORTS       PHILIPPINES                    1               1        0    1083  swasted          
6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      930    1083  swasted          
6 months    ki1135781-COHORTS       PHILIPPINES                    0               1       10    1083  swasted          
6 months    ki1148112-LCNI-5        MALAWI                         1               0        3     812  swasted          
6 months    ki1148112-LCNI-5        MALAWI                         1               1        0     812  swasted          
6 months    ki1148112-LCNI-5        MALAWI                         0               0      809     812  swasted          
6 months    ki1148112-LCNI-5        MALAWI                         0               1        0     812  swasted          
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    11862   16773  swasted          
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1      153   16773  swasted          
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     4682   16773  swasted          
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1       76   16773  swasted          
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     3714    4827  swasted          
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1       20    4827  swasted          
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0     1080    4827  swasted          
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1       13    4827  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0      181     212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1        0     212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       31     212  swasted          
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1        0     212  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      165     169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        1     169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        3     169  swasted          
24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     169  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          1               0      103     225  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          1               1        1     225  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          0               0      120     225  swasted          
24 months   ki0047075b-MAL-ED       INDIA                          0               1        1     225  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          1               0      227     228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          1               1        0     228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     228  swasted          
24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     228  swasted          
24 months   ki0047075b-MAL-ED       PERU                           1               0       47     196  swasted          
24 months   ki0047075b-MAL-ED       PERU                           1               1        0     196  swasted          
24 months   ki0047075b-MAL-ED       PERU                           0               0      147     196  swasted          
24 months   ki0047075b-MAL-ED       PERU                           0               1        2     196  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     235  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     235  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      231     235  swasted          
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        0     235  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     207  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     207  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      207     207  swasted          
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     207  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      168     428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1        2     428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      250     428  swasted          
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1        8     428  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0        9       9  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1        0       9  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0        0       9  swasted          
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        0       9  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      429     503  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1        4     503  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       70     503  swasted          
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0     503  swasted          
24 months   ki1114097-CONTENT       PERU                           1               0      151     164  swasted          
24 months   ki1114097-CONTENT       PERU                           1               1        0     164  swasted          
24 months   ki1114097-CONTENT       PERU                           0               0       13     164  swasted          
24 months   ki1114097-CONTENT       PERU                           0               1        0     164  swasted          
24 months   ki1135781-COHORTS       GUATEMALA                      1               0       77     903  swasted          
24 months   ki1135781-COHORTS       GUATEMALA                      1               1        0     903  swasted          
24 months   ki1135781-COHORTS       GUATEMALA                      0               0      822     903  swasted          
24 months   ki1135781-COHORTS       GUATEMALA                      0               1        4     903  swasted          
24 months   ki1135781-COHORTS       INDIA                          1               0     1446    3724  swasted          
24 months   ki1135781-COHORTS       INDIA                          1               1       11    3724  swasted          
24 months   ki1135781-COHORTS       INDIA                          0               0     2237    3724  swasted          
24 months   ki1135781-COHORTS       INDIA                          0               1       30    3724  swasted          
24 months   ki1135781-COHORTS       PHILIPPINES                    1               0      124     993  swasted          
24 months   ki1135781-COHORTS       PHILIPPINES                    1               1        0     993  swasted          
24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      852     993  swasted          
24 months   ki1135781-COHORTS       PHILIPPINES                    0               1       17     993  swasted          
24 months   ki1148112-LCNI-5        MALAWI                         1               0        2     556  swasted          
24 months   ki1148112-LCNI-5        MALAWI                         1               1        0     556  swasted          
24 months   ki1148112-LCNI-5        MALAWI                         0               0      553     556  swasted          
24 months   ki1148112-LCNI-5        MALAWI                         0               1        1     556  swasted          
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0     5864    8593  swasted          
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1      221    8593  swasted          
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     2397    8593  swasted          
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      111    8593  swasted          
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3577    4730  swasted          
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1       94    4730  swasted          
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0     1024    4730  swasted          
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1       35    4730  swasted          


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
![](/tmp/03019db5-f340-48c8-ad40-c5f8e1e8ae64/7c5cf654-f1c7-4540-8e96-f765ad9ffddf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03019db5-f340-48c8-ad40-c5f8e1e8ae64/7c5cf654-f1c7-4540-8e96-f765ad9ffddf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03019db5-f340-48c8-ad40-c5f8e1e8ae64/7c5cf654-f1c7-4540-8e96-f765ad9ffddf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03019db5-f340-48c8-ad40-c5f8e1e8ae64/7c5cf654-f1c7-4540-8e96-f765ad9ffddf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0900901   0.0523948   0.1277854
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0509915   0.0280235   0.0739595
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0655738   0.0459161   0.0852315
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0697674   0.0158867   0.1236481
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                0.1395349   0.0358522   0.2432175
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                0.0689655   0.0442899   0.0936411
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0486647   0.0383900   0.0589394
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.0475504   0.0396330   0.0554679
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0395480   0.0108234   0.0682727
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0368809   0.0248846   0.0488773
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0183678   0.0156028   0.0211329
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0216924   0.0170537   0.0263310
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0123722   0.0061302   0.0186143
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0149533   0.0037914   0.0261151
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0180947   0.0120672   0.0241223
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0385737   0.0317775   0.0453700
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0127341   0.0102949   0.0151732
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0159731   0.0124638   0.0194824
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0053562   0.0020655   0.0086468
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0118939   0.0050435   0.0187442
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0075498   0.0031045   0.0119950
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.0132333   0.0085287   0.0179379
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0363188   0.0311670   0.0414706
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0442584   0.0360203   0.0524964
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0256061   0.0196215   0.0315907
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0330500   0.0222752   0.0438249


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
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.5660057   0.3060721   1.046689
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.0639535   0.4646640   2.436162
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 0.4942529   0.2166606   1.127505
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 0.9771034   0.7467294   1.278550
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 0.9325606   0.4207770   2.066817
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1809969   0.9114550   1.530250
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2086144   0.4883313   2.991307
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 2.1317665   1.4624550   3.107397
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2543580   0.9477262   1.660199
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 2.2205855   0.9509994   5.185072
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.7528171   0.8811079   3.486937
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2186072   0.9620426   1.543594
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2907098   0.8615781   1.933582


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0240031   -0.0511468   0.0031406
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0005182   -0.0065695   0.0076059
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0638111   -0.1602019   0.0325798
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0006934   -0.0087652   0.0073785
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0022478   -0.0284837   0.0239880
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0010307   -0.0006300   0.0026915
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0005768   -0.0022961   0.0034497
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0127272    0.0070749   0.0183794
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0009188   -0.0002503   0.0020880
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0014804   -0.0002577   0.0032184
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0034599   -0.0004813   0.0074011
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0023173   -0.0005431   0.0051777
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0016666   -0.0011158   0.0044490


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3632053   -0.8257733   -0.0178310
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0078403   -0.1053879    0.1094703
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.8426813   -2.6359609    0.0661412
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0144541   -0.1974665    0.1405880
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0602637   -1.0579534    0.4537490
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0531352   -0.0359109    0.1345270
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0445435   -0.2071576    0.2437632
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.4129265    0.2128801    0.5621311
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0672980   -0.0237114    0.1502165
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.2165360   -0.0952853    0.4395836
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.3142608   -0.1343673    0.5854621
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0599771   -0.0172725    0.1313606
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0611096   -0.0478233    0.1587177

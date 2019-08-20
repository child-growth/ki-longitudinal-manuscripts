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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight            0      208     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight            1        8     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight              0       27     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight              1        5     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight            0      204     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight            1        2     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight              0       10     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight              1        0     216
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight            0      177     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight            1       14     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight              0       42     240
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight              1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight            0      234     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight            1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight              0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight              1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight            0      277     283
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight            1        1     283
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight              0        5     283
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight              1        0     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            0      255     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            1        2     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              0        8     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              1        0     265
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            0      876    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            1       63    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              0      275    1256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              1       42    1256
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            0      410     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            1       29     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              0       77     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              1       18     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            0      515     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            1        7     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              0      109     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              1        8     639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            0      645     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              0       59     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              1        8     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     2028    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       57    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       35    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        0    2120
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            0     1260    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            1      144    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              0      182    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              1       47    1633
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            0    13084   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            1      108   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight              0      520   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight              1        2   13714
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            0     7503    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            1      121    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              0      400    8044
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              1       20    8044
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            0      595     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            1        4     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              0      115     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              1        2     716
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight            0      211     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight            1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight              0       30     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight              1        2     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight            0      205     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight            1        1     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight              0       10     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight              1        0     216
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight            0      178     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight            1       12     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight              0       42     239
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight              1        7     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight            0      232     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight            1        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight              0        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight              1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight            0      278     283
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight            1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight              0        5     283
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight              1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            0      254     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            1        2     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              0        7     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              1        0     263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight            0      131     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight            1        9     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight              0       27     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight              1        2     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight            0      511     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight            1        8     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight              0      111     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight              1        6     636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            0      226     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              0       19     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              1        1     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     1935    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       49    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       30    2016
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        2    2016
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight            0    11583   13163
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight            1     1078   13163
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight              0      459   13163
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight              1       43   13163
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            0      531     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            1        9     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              0       22     565
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              1        3     565
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight            0      208     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight            1        8     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight              0       27     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight              1        5     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight            0      204     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight            1        2     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight              0       10     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight              1        0     216
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight            0      177     240
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight            1       14     240
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight              0       42     240
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight              1        7     240
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight            0      234     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight            1        4     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight              0        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight              1        0     238
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight            0      277     283
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight            1        1     283
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight              0        5     283
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight              1        0     283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            0      255     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            1        2     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              0        8     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              1        0     265
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            0      876    1256
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            1       63    1256
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              0      275    1256
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              1       42    1256
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            0      410     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            1       29     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              0       77     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              1       18     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            0      515     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            1        7     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              0      109     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              1        8     639
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            0      645     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              0       59     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     2028    2120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       57    2120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       35    2120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        0    2120
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            0     1260    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            1      144    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              0      182    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              1       47    1633
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            0    13084   13714
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            1      108   13714
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight              0      520   13714
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight              1        2   13714
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            0     7503    8044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            1      121    8044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              0      400    8044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              1       20    8044
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            0      595     716
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            1        4     716
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              0      115     716
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              1        2     716


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/c834eef6-38ee-4bb0-bc2d-0ca7f1ee869e/26f37f8c-5c83-4f50-8b83-263d4a8cfc48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c834eef6-38ee-4bb0-bc2d-0ca7f1ee869e/26f37f8c-5c83-4f50-8b83-263d4a8cfc48/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c834eef6-38ee-4bb0-bc2d-0ca7f1ee869e/26f37f8c-5c83-4f50-8b83-263d4a8cfc48/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c834eef6-38ee-4bb0-bc2d-0ca7f1ee869e/26f37f8c-5c83-4f50-8b83-263d4a8cfc48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0370370   0.0118010   0.0622731
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301929   0.2823071
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0732984   0.0362598   0.1103371
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446746   0.2410397
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0669384   0.0446354   0.0892413
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1332320   0.0908331   0.1756308
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0661809   0.0428785   0.0894833
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1892249   0.1084960   0.2699538
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0134100   0.0035350   0.0232849
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0683761   0.0226075   0.1141447
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493   0.0147701   0.0395285
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030   0.0417059   0.1971000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1025825   0.0777092   0.1274557
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1925362   0.0737931   0.3112792
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0158686   0.0130605   0.0186767
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0536219   0.0304675   0.0767763
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0631579   0.0284979   0.0978179
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446737   0.2410406
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0154143   0.0048072   0.0260213
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0512821   0.0112831   0.0912810
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0851469   0.0572381   0.1130557
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          NA                0.0864910   0.0520955   0.1208864
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0370370   0.0118010   0.0622731
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301929   0.2823071
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0732984   0.0362598   0.1103371
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446746   0.2410397
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0669384   0.0446354   0.0892413
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1332320   0.0908331   0.1756308
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0664680   0.0431196   0.0898163
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1888410   0.1080090   0.2696730
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0134100   0.0035350   0.0232849
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0683761   0.0226075   0.1141447
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493   0.0147701   0.0395285
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030   0.0417059   0.1971000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1025351   0.0778010   0.1272692
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.2012648   0.0866908   0.3158388
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0158663   0.0130590   0.0186736
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0545403   0.0315518   0.0775287


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0524194   0.0246252   0.0802135
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0835987   0.0594934   0.1077040
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0234742   0.0117259   0.0352225
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0175286   0.0146606   0.0203965
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0794979   0.0451303   0.1138656
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0220126   0.0106005   0.0334246
0-6 months    ki1119695-PROBIT          BELARUS        NA                   NA                0.0851630   0.0575235   0.1128024
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0524194   0.0246252   0.0802135
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.0875000   0.0516764   0.1233236
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0835987   0.0594934   0.1077040
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0234742   0.0117259   0.0352225
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0175286   0.0146606   0.0203965


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.218750   1.4674655   12.128293
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.948980   0.8304871    4.573848
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.990368   1.3616783    2.909325
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.859206   1.6443524    4.971597
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     5.098901   1.8849040   13.793166
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.876891   0.9070575    3.883681
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     3.379118   2.1189446    5.388737
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     2.261905   0.9386674    5.450507
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     3.326923   1.1757515    9.413908
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.015785   0.7158689    1.441353
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.218750   1.4674655   12.128293
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.948980   0.8304871    4.573848
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.990368   1.3616783    2.909325
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.841082   1.6321242    4.945548
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     5.098901   1.8849040   13.793166
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.962887   0.9993888    3.855283
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     3.437490   2.1762696    5.429630


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0166604    0.0065752   0.0267455
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0218341    0.0066522   0.0370159
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0100642    0.0013340   0.0187945
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0143802   -0.0037892   0.0325496
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016600    0.0005736   0.0027464
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0163400   -0.0053950   0.0380750
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0065983   -0.0010907   0.0142873
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0000161   -0.0011216   0.0011537
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0166604    0.0065752   0.0267455
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0215470    0.0063342   0.0367598
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0100642    0.0013340   0.0187945
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0144276   -0.0035559   0.0324111
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016623    0.0005763   0.0027483


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1992897    0.0789449   0.3039103
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2480721    0.0688837   0.3927767
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.4287356    0.0242276   0.6655542
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1229468   -0.0382377   0.2591077
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0947009    0.0325525   0.1528569
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.2055402   -0.1029502   0.4277471
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.2997523   -0.0965289   0.5528190
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0001886   -0.0132728   0.0134712
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1992897    0.0789449   0.3039103
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2448106    0.0651256   0.3899597
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.4287356    0.0242276   0.6655542
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1233520   -0.0358366   0.2580763
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0948331    0.0327180   0.1529594

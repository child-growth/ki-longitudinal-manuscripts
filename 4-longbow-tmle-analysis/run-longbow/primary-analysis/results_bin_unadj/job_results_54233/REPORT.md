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

unadjusted

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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            0      256     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            1        2     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              0        8     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              1        0     266
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            0      855    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            1       67    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              0      297    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              1       38    1257
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            0      410     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            1       29     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              0       77     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              1       18     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            0      515     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            1        7     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              0      110     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              1        8     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            0      645     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              0       59     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              1        8     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     2028    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       57    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       35    2120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        0    2120
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            0     1269    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            1      146    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              0      183    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              1       47    1645
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            0    13084   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            1      108   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight              0      520   13714
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight              1        2   13714
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            0     7609    8157
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            1      120    8157
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              0      408    8157
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              1       20    8157
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            0      595     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            1        4     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              0      115     716
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              1        2     716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight            0     9213   15759
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight            1      501   15759
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight              0     5651   15759
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight              1      394   15759
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight            0      231     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight            1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight              0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight              1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight            0      278     283
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight            1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight              0        5     283
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight              1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            0      255     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            1        2     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              0        8     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              1        0     265
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight            0      131     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight            1        9     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight              0       27     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight              1        2     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight            0      511     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight            1        8     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight              0      112     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight              1        6     637
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            0      549     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            1        9     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              0       23     584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              1        3     584
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight            0       32      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight            1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight              0       16      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight              1        1      50
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            0      256     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight            1        2     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              0        8     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight              1        0     266
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            0      855    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight            1       67    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              0      297    1257
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight              1       38    1257
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            0      410     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight            1       29     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              0       77     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight              1       18     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            0      515     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight            1        7     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              0      110     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight              1        8     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            0      645     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight            1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              0       59     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight              1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     2028    2120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       57    2120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       35    2120
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        0    2120
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            0     1269    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight            1      146    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              0      183    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight              1       47    1645
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            0    13084   13714
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            1      108   13714
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight              0      520   13714
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight              1        2   13714
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            0     7609    8157
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            1      120    8157
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              0      408    8157
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight              1       20    8157
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            0      595     716
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight            1        4     716
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              0      115     716
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight              1        2     716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight            0     9213   15759
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight            1      501   15759
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight              0     5651   15759
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight              1      394   15759


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
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
![](/tmp/df141b35-abf5-4ecc-88b4-1ff64d3e7cdd/e408ed44-7674-447e-ad37-97710b632b14/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/df141b35-abf5-4ecc-88b4-1ff64d3e7cdd/e408ed44-7674-447e-ad37-97710b632b14/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/df141b35-abf5-4ecc-88b4-1ff64d3e7cdd/e408ed44-7674-447e-ad37-97710b632b14/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/df141b35-abf5-4ecc-88b4-1ff64d3e7cdd/e408ed44-7674-447e-ad37-97710b632b14/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0370370   0.0118010   0.0622731
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301929   0.2823071
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0732984   0.0362598   0.1103371
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446746   0.2410397
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0726681   0.0489035   0.0964327
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1134328   0.0723182   0.1545475
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0660592   0.0428025   0.0893160
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1894737   0.1105965   0.2683509
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0134100   0.0035350   0.0232849
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0677966   0.0224018   0.1131914
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493   0.0147701   0.0395285
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030   0.0417059   0.1971000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1031802   0.0774896   0.1288708
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.2043478   0.0901735   0.3185221
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0155259   0.0127695   0.0182824
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0467290   0.0267325   0.0667255
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0515750   0.0464790   0.0566711
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0651778   0.0588813   0.0714744
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0631579   0.0284979   0.0978179
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446737   0.2410406
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0154143   0.0048072   0.0260213
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0508475   0.0111785   0.0905164
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0851434   0.0572131   0.1130736
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          NA                0.0856574   0.0503303   0.1209844
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0370370   0.0118010   0.0622731
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301929   0.2823071
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0732984   0.0362598   0.1103371
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446746   0.2410397
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0726681   0.0489035   0.0964327
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1134328   0.0723182   0.1545475
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0660592   0.0428025   0.0893160
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1894737   0.1105965   0.2683509
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0134100   0.0035350   0.0232849
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0677966   0.0224018   0.1131914
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493   0.0147701   0.0395285
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030   0.0417059   0.1971000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1031802   0.0774896   0.1288708
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.2043478   0.0901735   0.3185221
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0155259   0.0127695   0.0182824
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0467290   0.0267325   0.0667255
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0515750   0.0464790   0.0566711
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0651778   0.0588813   0.0714744


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0524194   0.0246252   0.0802135
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0835322   0.0594080   0.1076564
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1173252   0.0921861   0.1424644
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0171632   0.0143445   0.0199819
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0567929   0.0526539   0.0609319
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0794979   0.0451303   0.1138656
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1119695-PROBIT          BELARUS        NA                   NA                0.0851630   0.0575235   0.1128024
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0524194   0.0246252   0.0802135
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.0875000   0.0516764   0.1233236
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0835322   0.0594080   0.1076564
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1173252   0.0921861   0.1424644
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0171632   0.0143445   0.0199819
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0567929   0.0526539   0.0609319


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.218750   1.4674655   12.128293
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.948980   0.8304871    4.573848
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.560971   1.0627745    2.292708
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.868240   1.6627846    4.947603
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     5.055690   1.8686708   13.678173
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.980494   1.0098403    3.884137
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     3.009735   1.8937530    4.783362
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.263747   1.1084351    1.440822
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     2.261905   0.9386674    5.450507
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     3.298729   1.1656329    9.335368
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.006037   0.7049066    1.435808
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.218750   1.4674655   12.128293
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.948980   0.8304871    4.573848
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.560971   1.0627745    2.292708
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.868240   1.6627846    4.947603
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     5.055690   1.8686708   13.678173
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.980494   1.0098403    3.884137
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     3.009735   1.8937530    4.783362
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.263747   1.1084351    1.440822


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0108641    0.0009938   0.0207344
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0219558    0.0067873   0.0371242
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0100275    0.0013074   0.0187476
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0141450   -0.0038384   0.0321284
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016372    0.0005674   0.0027071
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0052179    0.0022598   0.0081760
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0163400   -0.0053950   0.0380750
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0065638   -0.0011177   0.0142452
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0000196   -0.0011409   0.0011801
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0108641    0.0009938   0.0207344
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0219558    0.0067873   0.0371242
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0100275    0.0013074   0.0187476
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0141450   -0.0038384   0.0321284
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016372    0.0005674   0.0027071
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0052179    0.0022598   0.0081760


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1300589    0.0070564   0.2378242
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2494548    0.0706300   0.3938710
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.4278416    0.0226926   0.6650335
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1205624   -0.0392985   0.2558342
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0953921    0.0329326   0.1538176
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0918758    0.0377885   0.1429228
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.2055402   -0.1029502   0.4277471
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.2986513   -0.0982640   0.5521204
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0002302   -0.0135076   0.0137818
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1300589    0.0070564   0.2378242
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2494548    0.0706300   0.3938710
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.4278416    0.0226926   0.6650335
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1205624   -0.0392985   0.2558342
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0953921    0.0329326   0.1538176
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0918758    0.0377885   0.1429228

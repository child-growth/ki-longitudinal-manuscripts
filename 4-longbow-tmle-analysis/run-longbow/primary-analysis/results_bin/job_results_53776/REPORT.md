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
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

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
![](/tmp/42482e08-48da-4fe4-9655-556b2f45b16e/1dfa2660-a9ce-41bc-b5a9-17913a775701/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/42482e08-48da-4fe4-9655-556b2f45b16e/1dfa2660-a9ce-41bc-b5a9-17913a775701/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/42482e08-48da-4fe4-9655-556b2f45b16e/1dfa2660-a9ce-41bc-b5a9-17913a775701/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/42482e08-48da-4fe4-9655-556b2f45b16e/1dfa2660-a9ce-41bc-b5a9-17913a775701/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0370370   0.0118010   0.0622731
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301929   0.2823071
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0732984   0.0362598   0.1103371
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446746   0.2410397
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0721159   0.0479718   0.0962601
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1139584   0.0717793   0.1561375
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0661671   0.0428713   0.0894630
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1902498   0.1088745   0.2716252
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0134100   0.0035350   0.0232849
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0677966   0.0224018   0.1131914
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493   0.0147701   0.0395285
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030   0.0417059   0.1971000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1032117   0.0778617   0.1285618
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.2049267   0.0906819   0.3191716
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0155393   0.0127785   0.0183002
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0545622   0.0319006   0.0772239
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0515272   0.0464139   0.0566404
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0651233   0.0588033   0.0714432
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0631579   0.0284979   0.0978179
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446737   0.2410406
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0154143   0.0048072   0.0260213
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0508475   0.0111785   0.0905164
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0851117   0.0571942   0.1130292
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          NA                0.0875263   0.0515073   0.1235454
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0370370   0.0118010   0.0622731
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301929   0.2823071
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0732984   0.0362598   0.1103371
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446746   0.2410397
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0721159   0.0479718   0.0962601
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1139584   0.0717793   0.1561375
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0659821   0.0426890   0.0892752
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1837941   0.1034689   0.2641193
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0134100   0.0035350   0.0232849
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0677966   0.0224018   0.1131914
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493   0.0147701   0.0395285
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030   0.0417059   0.1971000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1032589   0.0778996   0.1286181
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.2025818   0.0900267   0.3151369
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0155432   0.0127826   0.0183039
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0585625   0.0353564   0.0817687
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0515106   0.0464067   0.0566146
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0652345   0.0589020   0.0715670


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
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.580212   1.0640270    2.346810
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.875292   1.6505520    5.008811
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     5.055690   1.8686708   13.678173
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.985499   1.0225798    3.855156
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     3.511233   2.2349444    5.516359
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.263863   1.1079977    1.441653
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     2.261905   0.9386674    5.450507
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     3.298729   1.1656329    9.335368
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.028370   0.7217605    1.465230
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.218750   1.4674655   12.128293
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.948980   0.8304871    4.573848
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.580212   1.0640270    2.346810
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.785515   1.5869913    4.889183
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     5.055690   1.8686708   13.678173
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.961883   1.0087970    3.815419
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     3.767723   2.4405444    5.816626
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.266428   1.1104651    1.444297


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0114163    0.0015607   0.0212720
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0218478    0.0066202   0.0370754
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0100275    0.0013074   0.0187476
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0141135   -0.0038565   0.0320835
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016238    0.0005521   0.0026955
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0052658    0.0022908   0.0082407
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0163400   -0.0053950   0.0380750
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0065638   -0.0011177   0.0142452
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0000513   -0.0011161   0.0012186
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0114163    0.0015607   0.0212720
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0220329    0.0068246   0.0372412
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0100275    0.0013074   0.0187476
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0140664   -0.0039190   0.0320517
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016200    0.0005480   0.0026919
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0052823    0.0023149   0.0082498


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1366695    0.0118316   0.2457362
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2482287    0.0685520   0.3932456
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.4278416    0.0226926   0.6650335
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1202938   -0.0388384   0.2550497
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0946114    0.0319786   0.1531917
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0927186    0.0382877   0.1440689
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.2055402   -0.1029502   0.4277471
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.2986513   -0.0982640   0.5521204
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0006020   -0.0132439   0.0142588
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1366695    0.0118316   0.2457362
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2503309    0.0708115   0.3951671
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.4278416    0.0226926   0.6650335
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1198920   -0.0394113   0.2547801
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0943854    0.0317424   0.1529755
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0930103    0.0387284   0.1442270

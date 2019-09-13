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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
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

agecat        studyid                    country                        mbmi             wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       30    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       63    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       14    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       15    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       15     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     23
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       48    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       80    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       22    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       25    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       20     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       73     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     93
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       25     34
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0       13     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       64     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       34     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     45
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      287    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      194    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      171    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       92    744
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      152    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      176    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       50    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       43    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       87    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      134    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       37    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       44    302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       94    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      174    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       22    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       20    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      255    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      432    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        6    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        9    702
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      612    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1       26    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    781
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0      464   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     3309   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0       23   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1      160   3956
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      974   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1491   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      101   2666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      100   2666
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       42     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     78
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       39     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        9     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       11     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0       14     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       43     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       11     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       12     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       34     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     43
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        4     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       23     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       10     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0       92    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      111    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       54    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       49    306
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0       50    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      128    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       14    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       31    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       20    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      110    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       15    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       34    179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       16    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      161    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0        4    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       16    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0       96    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      232    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        5    336
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              0      365   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              1     3276   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                0       16   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                1      157   3814
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      236   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1434   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       24   1789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       95   1789
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0      4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       24     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       24     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        8     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        6     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       34     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       37     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       11     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       13     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       39     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     50
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     23
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       14     23
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       41     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       24     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        2     33
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      195    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       83    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      117    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       43    438
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      102    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1       48    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       36    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       12    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       67    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       10    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       78    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       18    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      159    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      200    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        4    366
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      612    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1       26    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    781
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0       99    142
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1       33    142
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0        7    142
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1        3    142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      738    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1       57    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       77    877
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1        5    877
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       38     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     74


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/1e80d95d-c767-4541-b160-8d1c7eec1fce/11d6063b-539b-400a-8a29-4bac3597b03f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1e80d95d-c767-4541-b160-8d1c7eec1fce/11d6063b-539b-400a-8a29-4bac3597b03f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1e80d95d-c767-4541-b160-8d1c7eec1fce/11d6063b-539b-400a-8a29-4bac3597b03f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1e80d95d-c767-4541-b160-8d1c7eec1fce/11d6063b-539b-400a-8a29-4bac3597b03f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.6915268   0.5868746   0.7961789
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4362134   0.2411872   0.6312396
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.6188647   0.5249105   0.7128189
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.4879315   0.3321508   0.6437121
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.4034109   0.3561539   0.4506679
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.3546255   0.2973067   0.4119443
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.5367576   0.4780763   0.5954390
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4539835   0.3548591   0.5531078
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.6051938   0.5383342   0.6720534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.5165096   0.3973365   0.6356827
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.6474663   0.5898151   0.7051175
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.5090570   0.3234308   0.6946832
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.6288210   0.5904220   0.6672199
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.6000000   0.3523180   0.8476820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0407524   0.0253994   0.0561053
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0192211   0.0926670
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8771754   0.8667782   0.8875726
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8581795   0.8100980   0.9062609
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.6051661   0.5857689   0.6245633
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5076813   0.4420696   0.5732930
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1250000   0.0290888   0.2209112
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0868920   0.3797747
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.8666667   0.7613735   0.9719599
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.6000000   0.3771424   0.8228576
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.7488977   0.6287792   0.8690161
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5218562   0.3055128   0.7381996
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.5408289   0.4719739   0.6096839
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.4839494   0.3861955   0.5817033
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7192898   0.6525673   0.7860123
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.7021194   0.5654883   0.8387504
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.8468581   0.7858231   0.9078930
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.6819457   0.5415664   0.8223250
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8998587   0.8899970   0.9097205
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8766961   0.8295667   0.9238256
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.8587431   0.8420914   0.8753948
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.7977384   0.7259066   0.8695702
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.5000000   0.3485042   0.6514958
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4285714   0.1923941   0.6647488
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.5165774   0.3832338   0.6499210
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5574072   0.3165396   0.7982748
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3002892   0.2444777   0.3561007
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2760733   0.2075369   0.3446097
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3203880   0.2438160   0.3969599
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.2384313   0.1112891   0.3655736
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2639583   0.1734832   0.3544334
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3031191   0.1108350   0.4954032
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0407524   0.0253994   0.0561053
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0192211   0.0926670
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0716981   0.0538446   0.0895517
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.0609756   0.0103160   0.1116352
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1363636   0.0329768   0.2397505
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0877343   0.3789324


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6000000   0.5192868   0.6807132
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5894040   0.5323948   0.6464131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6258065   0.5718723   0.6797406
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6282051   0.5902579   0.6661523
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0435339   0.0292984   0.0577695
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8768959   0.8667536   0.8870382
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5967742   0.5781484   0.6154000
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8000000   0.6995926   0.9004074
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6875000   0.5825226   0.7924774
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8044693   0.7471161   0.8618224
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.9001049   0.8905121   0.9096977
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8546674   0.8383989   0.8709359
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0435339   0.0292984   0.0577695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0706956   0.0538314   0.0875597
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.6307976   0.3935149   1.0111575
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.7884300   0.5528225   1.1244512
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.8790676   0.7199781   1.0733102
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.8457885   0.6625352   1.0797286
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.8534615   0.6601592   1.1033651
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     0.7862293   0.5400881   1.1445475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9541667   0.6286319   1.4482784
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3727811   0.6440241   2.9261761
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     0.9783442   0.9238941   1.0360034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8389123   0.7343227   0.9583987
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.8666667   0.6926702   5.0304525
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.6923077   0.4683665   1.0233224
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.6968324   0.4464527   1.0876302
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.8948290   0.7054557   1.1350378
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.9761286   0.7865022   1.2114743
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.8052656   0.6472350   1.0018814
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     0.9742597   0.9222476   1.0292052
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9289605   0.8472099   1.0185995
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.8571429   0.4568613   1.6081334
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.0790391   0.6493070   1.7931817
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.9193580   0.6729156   1.2560551
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.7441957   0.4142416   1.3369667
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.1483598   0.5570520   2.3673378
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3727811   0.6440241   2.9261761
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8504493   0.3572482   2.0245419
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.7111111   0.6408783   4.5685760


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0521825   -0.1040935   -0.0002715
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0188647   -0.0688319    0.0311026
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0190023   -0.0454647    0.0074600
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0165676   -0.0422406    0.0091054
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0157898   -0.0520617    0.0204821
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0216599   -0.0454209    0.0021012
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006158   -0.0068812    0.0056495
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0027816   -0.0045144    0.0100776
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0002796   -0.0024614    0.0019023
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0083919   -0.0135898   -0.0031941
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0416667   -0.0265326    0.1098659
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0666667   -0.1342155    0.0008822
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0613977   -0.1345683    0.0117730
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0179531   -0.0580645    0.0221583
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0062853   -0.0364485    0.0238779
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0423888   -0.0827364   -0.0020412
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0002461   -0.0018093    0.0023015
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0040757   -0.0089962    0.0008449
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0161290   -0.0810894    0.0488313
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0097384   -0.0593074    0.0787842
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0126180   -0.0455186    0.0202827
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0173577   -0.0534513    0.0187360
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0124645   -0.0407232    0.0656521
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0027816   -0.0045144    0.0100776
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0010026   -0.0060302    0.0040251
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0393120   -0.0337215    0.1123456


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0816188   -0.1656590   -0.0036376
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0314411   -0.1183949    0.0487521
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0494326   -0.1202682    0.0169239
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0318492   -0.0822238    0.0161807
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0267894   -0.0903323    0.0330503
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0346111   -0.0735864    0.0029492
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0009803   -0.0110044    0.0089444
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0638945   -0.1187672    0.2167329
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0003188   -0.0028100    0.0021663
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0140621   -0.0228154   -0.0053838
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2500000   -0.2838955    0.5618802
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0833333   -0.1747478    0.0009676
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0893057   -0.2039454    0.0144180
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0343353   -0.1141090    0.0397263
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0088152   -0.0520233    0.0326182
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0526916   -0.1052102   -0.0026687
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0002735   -0.0020127    0.0025544
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0047687   -0.0105499    0.0009793
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0333333   -0.1758408    0.0919028
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0185030   -0.1218855    0.1413237
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0438624   -0.1645839    0.0643450
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0572803   -0.1831796    0.0552224
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0450920   -0.1662683    0.2181480
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0638945   -0.1187672    0.2167329
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0141814   -0.0877429    0.0544053
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2237762   -0.3205992    0.5437500

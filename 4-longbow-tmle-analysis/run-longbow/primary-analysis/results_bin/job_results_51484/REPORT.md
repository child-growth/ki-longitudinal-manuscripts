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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        mbmi             ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      194     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       28     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       21     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1       11     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      209     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0       10     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      154     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1       39     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       35     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1       14     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      217     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1       21     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      275     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1       10     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      242     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       20     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      222     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       20     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      843    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      199    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      226    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      121    1389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      423     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       97     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       64     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       40     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      480     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       62     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       99     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       28     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      632     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       55     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       52     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       16     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     2195    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      112    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       35    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        3    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2424    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          1      302    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            0      374    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3177
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0    13183   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1       22   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      522   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        1   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     8874    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      405    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      467    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       49    9795
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      665     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1       27     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0      130     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       15     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      215     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       30     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        2     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      211     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            0       10     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          0      180     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          1       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight            0       45     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight            1        4     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          0      231     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight          0      283     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight          1        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight            0        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight            1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      259     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      238     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       14     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      974    1381
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1       63    1381
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      311    1381
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            1       33    1381
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      488     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       31     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       89     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       14     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      522     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       20     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            0      117     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       10     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      673     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       14     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       65     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        3     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     2289    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1       18    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       38    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight          0    13191   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight          1       14   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight            0      522   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight            1        1   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     9137    9755
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      109    9755
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      497    9755
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       12    9755
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          0      224     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight            0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight            1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      184     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       24     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       20     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1       11     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      195     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0        9     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      153     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1       33     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       34     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1       14     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      219     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      255     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        2     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      228     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       19     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      214     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      777    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      178    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      211    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      110    1276
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      371     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       78     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       57     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       36     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      455     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       50     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       83     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       25     613
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      615     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       48     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       52     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1835    1971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      106    1971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       27    1971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        3    1971
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2424    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          1      302    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            0      374    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3177
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0    13188   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1        9   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      523   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        0   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     7788    8558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      314    8558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      418    8558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       38    8558
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      657     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1       27     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0      124     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       15     823


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
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9e8ab601-df4a-40f7-8968-5245d9267583/faca8310-587e-48a2-80e1-ee4ee04a85ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9e8ab601-df4a-40f7-8968-5245d9267583/faca8310-587e-48a2-80e1-ee4ee04a85ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9e8ab601-df4a-40f7-8968-5245d9267583/faca8310-587e-48a2-80e1-ee4ee04a85ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9e8ab601-df4a-40f7-8968-5245d9267583/faca8310-587e-48a2-80e1-ee4ee04a85ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1266887   0.0821848   0.1711925
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.3490822   0.1529143   0.5452501
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.2031428   0.1463402   0.2599453
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.2696561   0.1378274   0.4014848
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1897960   0.1586631   0.2209290
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3474467   0.2683919   0.4265016
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1856395   0.1521074   0.2191717
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3899621   0.2939331   0.4859912
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1159200   0.0886124   0.1432276
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2358544   0.1604633   0.3112454
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0804975   0.0600127   0.1009822
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.2866150   0.1640125   0.4092176
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1107791   0.0916985   0.1298597
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1641440   0.1069767   0.2213112
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0436412   0.0394804   0.0478021
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1004311   0.0732110   0.1276512
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0388731   0.0244413   0.0533048
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1044716   0.0539667   0.1549764
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0598853   0.0367321   0.0830385
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.0943805   0.0418398   0.1469211
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0595745   0.0391343   0.0800147
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1384183   0.0685932   0.2082433
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0357260   0.0202104   0.0512415
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0879431   0.0349663   0.1409199
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0117631   0.0095654   0.0139608
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0230596   0.0098725   0.0362468
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1145757   0.0707325   0.1584188
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.4182367   0.2231646   0.6133088
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1771149   0.1222349   0.2319949
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.3081973   0.1723721   0.4440225
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1855588   0.1580093   0.2131084
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3392578   0.2664102   0.4121055
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1726749   0.1375570   0.2077929
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3854824   0.2829795   0.4879854
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1021927   0.0753890   0.1289964
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2395477   0.1521118   0.3269835
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0731442   0.0530906   0.0931978
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.3583272   0.2500862   0.4665683
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1108527   0.0917001   0.1300053
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1703186   0.1148487   0.2257884
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0387142   0.0345113   0.0429172
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0926291   0.0641935   0.1210647
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0393499   0.0247369   0.0539629
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1078273   0.0551823   0.1604724


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1535433   0.1091205   0.1979661
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2303816   0.1859599   0.2748032
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1192949   0.0996089   0.1389809
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0463502   0.0421864   0.0505140
0-24 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.0501792   0.0353804   0.0649781
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0695148   0.0442283   0.0948014
0-6 months    ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0124039   0.0102074   0.0146004
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2008547   0.1494120   0.2522974
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2257053   0.1874344   0.2639762
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1192949   0.0996089   0.1389809
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0411311   0.0369233   0.0453389
6-24 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.0510328   0.0359888   0.0660768


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     2.755434   1.4202575   5.345802
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.327422   0.7549744   2.333917
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.830632   1.6073372   2.084948
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.100642   1.5469610   2.852493
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.034630   1.3666063   3.029197
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     3.560547   2.1639363   5.858534
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.481724   1.0325354   2.126324
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.301291   1.7265828   3.067295
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.687506   1.4608132   4.944292
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.576020   0.8799256   2.822783
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.323448   1.2612259   4.280288
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.461600   1.1699230   5.179377
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.960332   1.0741530   3.577613
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.650310   1.9965237   6.673981
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.740098   1.0136919   2.987043
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.828303   1.5738414   2.123907
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.232417   1.5964922   3.121647
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.344079   1.4929299   3.680484
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.898915   3.2556688   7.371563
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.536441   1.0961353   2.153612
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.392638   1.7275906   3.313700
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.740219   1.4837971   5.060531


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0268546    0.0027920   0.0509173
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0158655   -0.0128468   0.0445777
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0405855    0.0239833   0.0571878
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0339117    0.0161334   0.0516901
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0186091    0.0032397   0.0339786
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0135423    0.0036818   0.0234027
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0085159    0.0006559   0.0163759
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0027090    0.0013363   0.0040816
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0113061    0.0021898   0.0204225
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0096295   -0.0033377   0.0225968
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0127728    0.0010040   0.0245415
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0091171   -0.0003266   0.0185607
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0006408   -0.0000583   0.0013398
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0318678    0.0062148   0.0575208
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0237398   -0.0057427   0.0532223
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0401465    0.0242296   0.0560634
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0376572    0.0181659   0.0571484
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0201564    0.0044331   0.0358797
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0131572    0.0031490   0.0231653
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0084422    0.0006158   0.0162687
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0024169    0.0010262   0.0038076
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0116829    0.0024452   0.0209206


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1748994    0.0088920   0.3131012
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0724424   -0.0675333   0.1940644
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1761666    0.1290458   0.2207380
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1544593    0.0713482   0.2301322
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1383279    0.0187605   0.2433257
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1440057    0.0368446   0.2392441
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0713851    0.0054952   0.1329095
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0584455    0.0287865   0.0871988
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2253154    0.0347636   0.3782495
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1385248   -0.0517387   0.2943690
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1765480    0.0047327   0.3187024
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.2033103   -0.0234905   0.3798530
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0516584   -0.0056642   0.1057137
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2176118    0.0329110   0.3670373
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1181939   -0.0392520   0.2517869
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1778712    0.1259564   0.2267025
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1790367    0.0837772   0.2643920
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1647453    0.0304635   0.2804289
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1524561    0.0333459   0.2568896
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0707679    0.0050424   0.1321517
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0587605    0.0248347   0.0915060
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2289296    0.0394808   0.3810122

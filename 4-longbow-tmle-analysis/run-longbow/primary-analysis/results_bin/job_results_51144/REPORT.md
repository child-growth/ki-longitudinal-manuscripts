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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        mbmi             ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0       90     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1      132     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0        9     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1       23     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      165     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1       46     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        6     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        4     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0       75     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1      118     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1       29     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      156     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1       82     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      102     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1      183     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        3     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      110     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1      152     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        1     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        7     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0       33     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1      209     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1       11     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      360    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      691    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       81    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1      274    1406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      190     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      333     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       85     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      305     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      237     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       62     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       65     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      365     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      322     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       28     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       40     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1511    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      796    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       24    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1       14    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1781    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      945    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      265    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1      186    3177
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    11001   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1     2204   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      403   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1      120   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     5277    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     4025    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      230    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1      287    9819
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      259     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1      433     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0       46     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1       99     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      148     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       74     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1       14     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      173     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               1       38     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        7     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               0      129     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               1       64     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 0       30     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 1       19     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               0      197     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               1       41     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               0      160     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               1      125     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 0        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 1        3     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      164     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       98     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        5     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      143     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1       99     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        8     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      634    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      415    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      170    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1      184    1403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      353     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      170     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       56     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       50     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      414     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      128     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       90     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       37     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      485     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      202     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       41     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       27     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1864    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      443    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       29    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        9    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               0    11948   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               1     1257   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 0      448   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 1       75   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     6674    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     2616    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      325    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1      192    9807
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               0      143     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               1       81     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 0       31     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 1       16     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0       84     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       58     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        9     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      154     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        8     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        1     168
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0       71     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1       54     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       20     155
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1       10     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      154     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1       41     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     195
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0       88     148
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1       58     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        2     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      100     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       54     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        0     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        2     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0       30     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1      110     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        3     145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      309     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      276     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       67     742
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       90     742
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      133     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      163     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       14     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       35     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      275     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      109     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       45     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       28     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      345     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      120     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       28     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       13     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1193    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      353    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       19    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        5    1570
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1781    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      945    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      265    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1      186    3177
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    10993   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1      947   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      403   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1       45   12388
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     4470    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     1409    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      194    6168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       95    6168
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      252     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1      352     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0       40     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1       83     727


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/34e1b243-cf21-4201-9e8b-cd0a5847746f/72a22880-c999-4edc-bc31-67fce21c913a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34e1b243-cf21-4201-9e8b-cd0a5847746f/72a22880-c999-4edc-bc31-67fce21c913a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34e1b243-cf21-4201-9e8b-cd0a5847746f/72a22880-c999-4edc-bc31-67fce21c913a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34e1b243-cf21-4201-9e8b-cd0a5847746f/72a22880-c999-4edc-bc31-67fce21c913a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.5945946   0.5298828   0.6593064
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.7187500   0.5626637   0.8748363
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.6077082   0.5387056   0.6767108
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5249369   0.3860558   0.6638181
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.6570506   0.6131677   0.7009334
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.7739966   0.7269359   0.8210574
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.6359074   0.5946172   0.6771976
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.8104748   0.7331217   0.8878279
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.4376697   0.3955113   0.4798282
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.5245618   0.4348563   0.6142674
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.4688093   0.4312993   0.5063193
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.6598503   0.5360798   0.7836209
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.3450371   0.3254403   0.3646340
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3614809   0.2617074   0.4612543
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3466531   0.2935250   0.3997813
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4089637   0.3037553   0.5141721
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.1671879   0.1479656   0.1864103
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.2250624   0.1836627   0.2664621
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.4330973   0.4230210   0.4431737
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5633681   0.5200368   0.6066993
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.6259482   0.5898005   0.6620960
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.6752753   0.5985697   0.7519810
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.3354869   0.2726775   0.3982962
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4579413   0.2615622   0.6543205
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.3283296   0.2620724   0.3945868
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.3742661   0.2323002   0.5162321
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.4090909   0.3470239   0.4711579
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3953294   0.3627604   0.4278984
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5170156   0.4594906   0.5745407
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3253671   0.2851442   0.3655901
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4685862   0.3729820   0.5641903
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2356835   0.1996669   0.2717002
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3047335   0.2208581   0.3886090
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2958890   0.2614987   0.3302794
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.3869975   0.2517234   0.5222717
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1920243   0.1758027   0.2082459
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2368421   0.1492053   0.3244789
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0954793   0.0822139   0.1087446
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.1340108   0.1035665   0.1644551
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2817029   0.2725487   0.2908570
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3784101   0.3353072   0.4215130
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.3617363   0.2985833   0.4248893
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.3588835   0.2214124   0.4963545
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.4084507   0.3273473   0.4895541
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5294118   0.2913931   0.7674304
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.4300469   0.3426750   0.5174188
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.3350886   0.1572072   0.5129700
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.4719088   0.4229381   0.5208795
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5734612   0.5206746   0.6262478
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.5506316   0.4938422   0.6074210
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.6944171   0.5582714   0.8305628
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2846374   0.2390720   0.3302028
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3907111   0.2675752   0.5138469
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2568824   0.2170528   0.2967120
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4039204   0.2389243   0.5689165
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2283312   0.2071921   0.2494702
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2083333   0.1089524   0.3077142
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3464797   0.2931754   0.3997839
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4153768   0.3123449   0.5184087
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0793778   0.0650138   0.0937417
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.1011218   0.0705276   0.1317160
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2401789   0.2292452   0.2511127
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3338331   0.2762797   0.3913865
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.5830979   0.5437054   0.6224905
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.6654114   0.5800443   0.7507785


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6074380   0.5457864   0.6690897
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6863442   0.6430946   0.7295939
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454158   0.3261661   0.3646654
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1692890   0.1503168   0.1882613
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4391486   0.4293319   0.4489653
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4179687   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4269423   0.3929328   0.4609518
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1927505   0.1767818   0.2087193
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0970280   0.0839943   0.1100616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2863261   0.2773790   0.2952732
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4932615   0.4489809   0.5375420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2280255   0.2072654   0.2487856
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0800775   0.0658478   0.0943072
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2438392   0.2331223   0.2545561
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.2088068   0.9481191   1.541171
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.8637977   0.6467943   1.153607
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.1779864   1.1137767   1.245898
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.2745171   1.1354741   1.430586
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.1985335   0.9848305   1.458609
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.4075028   1.1471536   1.726939
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.0476579   0.7904177   1.388616
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.1797491   0.8988052   1.548509
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.3461639   1.1333268   1.598972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3007886   1.2003307   1.409654
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.0788038   0.9497326   1.225416
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.3650052   0.8552863   2.178498
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.1399099   0.7408249   1.753984
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.3968254   0.8650371   2.255535
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.3078097   1.1797308   1.449794
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.4401767   1.1346905   1.827907
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.2929776   0.9437325   1.771467
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.3079146   0.9047247   1.890786
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.2333967   0.8438583   1.802752
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.4035591   1.1149006   1.766954
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3432952   1.1932367   1.512225
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     0.9921136   0.6511712   1.511568
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.2961460   0.7928735   2.118868
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.7791908   0.4406892   1.377702
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.2151951   1.0831774   1.363303
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.2611283   1.0105609   1.573824
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.3726624   0.9637537   1.955066
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.5723945   1.0159760   2.433546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9124174   0.5612510   1.483303
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.1988491   0.9204180   1.561507
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.2739306   0.9638600   1.683750
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3899350   1.1628488   1.661368
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.1411658   0.9871257   1.319244


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0156416   -0.0062428   0.0375260
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0002702   -0.0321007   0.0315603
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0292937    0.0187301   0.0398572
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0286395    0.0132286   0.0440504
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0137503   -0.0051531   0.0326537
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0106609   -0.0010923   0.0224142
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0003786   -0.0021536   0.0029109
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0093431   -0.0050559   0.0237421
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0021011    0.0005792   0.0036230
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0060513    0.0036679   0.0084346
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0096551   -0.0050632   0.0243734
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0109698   -0.0135811   0.0355207
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0146456   -0.0165583   0.0458496
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0088778   -0.0064128   0.0241684
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0316129    0.0158436   0.0473822
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0243944    0.0065424   0.0422464
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0109532   -0.0059804   0.0278869
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0074223   -0.0039499   0.0187944
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0007263   -0.0015136   0.0029661
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0015487    0.0003614   0.0027361
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0046232    0.0023365   0.0069099
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0038027   -0.0298440   0.0222386
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0129329   -0.0145769   0.0404428
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0171437   -0.0550949   0.0208076
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0213527    0.0089116   0.0337938
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0232814    0.0025354   0.0440275
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0151438   -0.0048762   0.0351638
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0059635   -0.0062926   0.0182196
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0003057   -0.0028487   0.0022373
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0095166   -0.0049550   0.0239881
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0006997   -0.0003339   0.0017333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0036603    0.0010142   0.0063063
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0152515   -0.0006447   0.0311476


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0256321   -0.0110868   0.0610175
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0004448   -0.0542434   0.0506084
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0426807    0.0270953   0.0580164
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0430963    0.0192750   0.0663390
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0304601   -0.0124060   0.0715112
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0222348   -0.0026398   0.0464923
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0010962   -0.0062666   0.0084051
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0262450   -0.0155440   0.0663143
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0124113    0.0030999   0.0216357
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0137795    0.0083320   0.0191971
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0151905   -0.0082752   0.0381100
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0316629   -0.0418837   0.1000178
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0427017   -0.0526933   0.1294521
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0212404   -0.0160894   0.0571988
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0740449    0.0378733   0.1088566
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0697458    0.0172494   0.1194379
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0444104   -0.0267140   0.1106077
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0244707   -0.0137640   0.0612635
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0037679   -0.0079388   0.0153386
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0159615    0.0031394   0.0286187
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0161467    0.0081302   0.0240984
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0106240   -0.0860578   0.0595705
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0306916   -0.0369476   0.0939188
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0415198   -0.1377615   0.0465810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0432888    0.0164323   0.0694119
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0405661    0.0034203   0.0763274
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0505161   -0.0186541   0.1149894
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0226881   -0.0250549   0.0682075
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0013406   -0.0125449   0.0097397
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0267322   -0.0153240   0.0670464
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0087381   -0.0044942   0.0217961
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0150109    0.0041063   0.0257961
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0254892   -0.0015252   0.0517750

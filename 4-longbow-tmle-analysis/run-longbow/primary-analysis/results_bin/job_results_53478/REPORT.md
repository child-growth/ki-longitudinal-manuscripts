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
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0       89     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1      133     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0        9     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1       23     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      158     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1       53     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        6     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        4     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0       74     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1      119     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       19     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1       30     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      155     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1       83     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      102     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1      183     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        3     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      107     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1      155     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        1     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        7     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0       32     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1      210     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1       11     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      353    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      675    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       88    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1      291    1407
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      190     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      333     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       85     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      305     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      237     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       61     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       66     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      365     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      322     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       28     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       40     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1511    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      796    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       24    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1       14    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1803    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      959    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      266    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1      188    3216
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    11001   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1     2204   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      403   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1      120   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     5091    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     4211    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      222    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1      295    9819
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      259     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1      433     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0       46     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1       99     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               0     8183   27105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               1     8539   27105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 0     5491   27105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 1     4892   27105
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      147     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       75     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1       14     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      168     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               1       43     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        7     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               0      128     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               1       65     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 0       30     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 1       19     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               0      196     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               1       42     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               0      160     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               1      125     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 0        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 1        3     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      163     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       99     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        5     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      142     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1      100     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        8     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      618    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      407    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      187    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1      192    1404
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      353     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      170     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       56     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       50     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      414     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      128     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       89     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       38     669
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     6669    9808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     2622    9808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      325    9808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1      192    9808
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               0      143     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               1       81     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 0       31     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 1       16     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               0     9578   27039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               1     7109   27039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 0     6293   27039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 1     4059   27039
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0       83     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       58     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0        8     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        9     158
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      147     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1       10     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        5     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        1     163
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0       70     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1       54     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       19     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1       11     154
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      153     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1       41     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     194
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0       88     148
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1       58     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        2     148
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0       97     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       56     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        0     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        2     155
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0       29     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1      110     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        2     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        3     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      304     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      268     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       72     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       99     743
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      133     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1      163     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       14     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       35     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      275     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1      109     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       44     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       28     456
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      345     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1      120     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       28     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       13     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1193    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      353    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       19    1570
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        5    1570
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1803    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      959    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      266    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1      188    3216
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    10993   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1      947   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      403   12388
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1       45   12388
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     4582    6470
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1     1589    6470
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      196    6470
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1      103    6470
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      252     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1      352     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0       40     727
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1       83     727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               0     4822   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               1     1430   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 0     3375   10460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 1      833   10460


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/ad3f42e8-0a61-448e-8dff-cc478e18c78d/7573a0a6-cc96-4f38-9ecc-2cc5b6a98916/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad3f42e8-0a61-448e-8dff-cc478e18c78d/7573a0a6-cc96-4f38-9ecc-2cc5b6a98916/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad3f42e8-0a61-448e-8dff-cc478e18c78d/7573a0a6-cc96-4f38-9ecc-2cc5b6a98916/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad3f42e8-0a61-448e-8dff-cc478e18c78d/7573a0a6-cc96-4f38-9ecc-2cc5b6a98916/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.5990991   0.5345045   0.6636937
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.7187500   0.5626637   0.8748363
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.6165017   0.5476766   0.6853267
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.6231344   0.4843571   0.7619116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.6552778   0.6069311   0.7036244
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.7696526   0.7311026   0.8082026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.6366548   0.5953885   0.6779211
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.8050724   0.7284467   0.8816980
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.4362666   0.3941881   0.4783452
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.5370039   0.4474681   0.6265396
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.4698523   0.4323944   0.5073101
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.6661930   0.5591052   0.7732808
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.3451401   0.3255430   0.3647371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3701362   0.2717848   0.4684876
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3473746   0.2941294   0.4006198
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4138901   0.3092188   0.5185613
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.1672408   0.1480041   0.1864775
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.2188331   0.1787594   0.2589068
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.4530361   0.4429135   0.4631587
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5810230   0.5383538   0.6236921
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.6258501   0.5897664   0.6619337
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.6809644   0.6045033   0.7574254
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.5100625   0.5006851   0.5194399
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.4719588   0.4610855   0.4828321
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.3396331   0.2765780   0.4026883
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4873701   0.2720647   0.7026756
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.3392250   0.2726507   0.4057992
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.4455468   0.3054068   0.5856867
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.4132231   0.3510620   0.4753843
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3965824   0.3587352   0.4344297
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5091033   0.4558095   0.5623972
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3251118   0.2848844   0.3653393
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4714345   0.3756903   0.5671787
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2342917   0.1983127   0.2702707
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3130775   0.2288453   0.3973097
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2956641   0.2614228   0.3299054
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.3823468   0.2589683   0.5057254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1920243   0.1758027   0.2082459
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2368421   0.1492053   0.3244789
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0954768   0.0822126   0.1087410
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.1387753   0.1071581   0.1703924
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2822519   0.2730938   0.2914100
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3775055   0.3343751   0.4206359
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.3615512   0.2984300   0.4246724
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.3802374   0.2404318   0.5200429
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.4252297   0.4161927   0.4342668
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.3932112   0.3829205   0.4035018
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.4113475   0.3298675   0.4928275
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5294118   0.2913884   0.7674352
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.4349010   0.3469410   0.5228610
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.3193846   0.1376524   0.5011167
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.4687573   0.4148797   0.5226349
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5731446   0.5285430   0.6177463
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.5510359   0.4942707   0.6078011
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.7005243   0.5714301   0.8296184
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2849938   0.2392714   0.3307162
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.4129206   0.2847968   0.5410443
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2563894   0.2165687   0.2962101
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4284420   0.2663803   0.5905038
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2283312   0.2071921   0.2494702
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2083333   0.1089524   0.3077142
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3478523   0.2948453   0.4008594
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4231920   0.3295487   0.5168354
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0794084   0.0650371   0.0937797
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.0984806   0.0685331   0.1284280
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2578199   0.2468923   0.2687475
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3534692   0.2971862   0.4097522
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.5829285   0.5435652   0.6222917
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.6730377   0.5889780   0.7570974
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.2290395   0.2166917   0.2413874
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.1978411   0.1845397   0.2111424


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6141732   0.5541901   0.6741564
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6865672   0.6433613   0.7297731
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4529148   0.4151667   0.4906629
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454158   0.3261661   0.3646654
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1692890   0.1503168   0.1882613
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4589062   0.4490494   0.4687630
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4955174   0.4876719   0.5033630
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3503937   0.2916054   0.4091820
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3471074   0.2870050   0.4072099
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4218750   0.3612599   0.4824901
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4266382   0.3925570   0.4607194
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1927505   0.1767818   0.2087193
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0970280   0.0839943   0.1100616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2869086   0.2779566   0.2958607
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4130330   0.4055721   0.4204940
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4939435   0.4498186   0.5380683
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2280255   0.2072654   0.2487856
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0800775   0.0658478   0.0943072
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2615147   0.2508057   0.2722237
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2163480   0.2069669   0.2257290


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.1997180   0.9414164   1.5288914
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.0107586   0.7873187   1.2976104
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.1745440   1.1006044   1.2534510
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.2645352   1.1271139   1.4187113
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.2309075   1.0152628   1.4923557
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.4178776   1.1848640   1.6967153
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.0724232   0.8172699   1.4072357
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.1914805   0.9088588   1.5619871
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.3084907   1.0994989   1.5572076
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.2825092   1.1877295   1.3848521
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.0880631   0.9589798   1.2345216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     0.9252959   0.9015550   0.9496620
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.4349900   0.8899433   2.3138510
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.3134256   0.9055153   1.9050888
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.3828571   0.8567351   2.2320714
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.2837265   1.1355740   1.4512076
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.4500686   1.1430689   1.8395209
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.3362723   0.9801865   1.8217183
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.2931798   0.9177617   1.8221657
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.2333967   0.8438583   1.8027521
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.4534969   1.1546959   1.8296188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3374772   1.1876957   1.5061477
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.0516834   0.6999208   1.5802331
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     0.9247029   0.8972656   0.9529793
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.2870183   0.7874368   2.1035542
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.7343845   0.4003279   1.3471973
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.2226895   1.0628192   1.4066077
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.2712861   1.0293955   1.5700169
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.4488758   1.0215865   2.0548833
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.6710596   1.1099617   2.5157987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9124174   0.5612510   1.4833032
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.2165853   0.9528972   1.5532417
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.2401781   0.9376693   1.6402817
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3709928   1.1626991   1.6166015
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.1545803   1.0017350   1.3307468
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     0.8637857   0.7946048   0.9389897


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0150741   -0.0067628    0.0369110
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0007992   -0.0318240    0.0302256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0312894    0.0207030    0.0418758
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0278921    0.0125295    0.0432547
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0166482   -0.0022544    0.0355507
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0096179   -0.0019412    0.0211771
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0002757   -0.0022490    0.0028004
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0092796   -0.0054074    0.0239667
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0020482    0.0005298    0.0035666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0058701    0.0034997    0.0082405
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0097533   -0.0049147    0.0244212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0145451   -0.0193971   -0.0096931
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0107606   -0.0139745    0.0354957
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0078825   -0.0234107    0.0391757
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0086519   -0.0066061    0.0239098
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0300558    0.0149236    0.0451880
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0246497    0.0067191    0.0425803
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0138398   -0.0032448    0.0309245
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0076472   -0.0036023    0.0188967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0007263   -0.0015136    0.0029661
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0015512    0.0003723    0.0027300
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0046567    0.0023685    0.0069449
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0036176   -0.0296217    0.0223865
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0121967   -0.0168704   -0.0075230
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0127031   -0.0149643    0.0403705
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0128231   -0.0513386    0.0256924
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0251862    0.0109376    0.0394347
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0228771    0.0022819    0.0434724
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0154448   -0.0047831    0.0356727
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0064564   -0.0059476    0.0188604
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0003057   -0.0028487    0.0022373
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0088019   -0.0058718    0.0234755
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0006691   -0.0003708    0.0017090
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0036948    0.0011050    0.0062846
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0154209   -0.0003513    0.0311932
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0126915   -0.0197431   -0.0056400


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0245438   -0.0118432    0.0596222
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0012980   -0.0529767    0.0478444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0455737    0.0286733    0.0621801
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0419716    0.0182373    0.0651321
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0367578   -0.0059862    0.0776857
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0200595   -0.0043911    0.0439150
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0007982   -0.0065412    0.0080841
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0260186   -0.0166025    0.0668527
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0120988    0.0028046    0.0213065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0127915    0.0076071    0.0179488
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0153449   -0.0080376    0.0381851
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0293534   -0.0391855   -0.0196143
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0307100   -0.0425436    0.0988164
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0227091   -0.0716455    0.1087560
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0205081   -0.0163884    0.0560652
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0704479    0.0335990    0.1058917
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0704757    0.0177490    0.1203720
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0557762   -0.0155757    0.1221151
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0252123   -0.0125777    0.0615920
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0037679   -0.0079388    0.0153386
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0159867    0.0032499    0.0285608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0162306    0.0082255    0.0241712
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0101069   -0.0854309    0.0599898
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0295296   -0.0408881   -0.0182949
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0299566   -0.0376377    0.0931477
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0303808   -0.1258538    0.0569960
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0509900    0.0186682    0.0822472
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0398617    0.0029897    0.0753700
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0514076   -0.0183587    0.1163943
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0245635   -0.0237648    0.0706104
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0013406   -0.0125449    0.0097397
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0246790   -0.0178048    0.0653896
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0083557   -0.0049508    0.0214859
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0141284    0.0041793    0.0239781
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0257724   -0.0010336    0.0518607
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0586627   -0.0915725   -0.0267450

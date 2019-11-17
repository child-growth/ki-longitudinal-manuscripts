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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        mbmi             ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  --------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      209     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       13     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       24     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        8     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      207     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        4     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0       10     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0      175     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1       18     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       41     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1        8     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      229     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1        9     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      281     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1        4     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        5     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      247     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       15     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      234     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       13     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      899    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      120    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      288    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       83    1390
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      448     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       72     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       77     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       27     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      512     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       30     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0      116     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       11     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      632     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       55     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       57     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1       11     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     2155    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      152    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       34    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        4    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     2647    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      116    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      416    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1       38    3217
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    12076   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1     1129   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      465   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1       58   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     8415    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      866    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      437    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       79    9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      686     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1        6     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0      143     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1        2     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               0    15561   26836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               1      999   26836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 0     9638   26836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 1      638   26836
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      211     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       11     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       27     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        5     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      208     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        3     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 0       10     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               0      179     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               1       14     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 0       42     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 1        7     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               0      231     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               0      284     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight               1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 0        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                 1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      257     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        5     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      238     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       14     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        0     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      959    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       55    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      336    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       33    1383
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      477     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       42     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       89     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       14     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      522     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       20     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0      119     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1        8     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      643     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       44     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       62     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1        6     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     2230    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       77    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       36    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        2    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               0    12093   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight               1     1112   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 0      467   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                 1       56   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     8637    9760
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      614    9760
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      456    9760
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       53    9760
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               0      224     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               0    15812   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               1      688   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 0     9821   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 1      418   26739
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      207     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       28     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        3     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      196     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        1     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        9     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0      182     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1        4     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       46     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1        2     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      233     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      261     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        5     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      237     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       10     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      228     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      869    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       68    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      284    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       56    1277
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      417     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       32     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       77     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       16     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      496     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       10     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0      105     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1        3     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      649     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       61     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1        6     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1863    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       79    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       28    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        2    1972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     2647    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      116    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      416    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1       38    3217
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    13179   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1       18   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      521   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1        2   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     7872    8597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      267    8597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      428    8597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       30    8597
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      678     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1        6     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0      137     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1        2     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               0    10308   17246
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight               1      319   17246
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 0     6388   17246
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                 1      231   17246


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
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/24317082-685b-468c-84c8-f9819ddcda7c/4b74aacd-c672-4688-bdea-a14a1d9b8820/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/24317082-685b-468c-84c8-f9819ddcda7c/4b74aacd-c672-4688-bdea-a14a1d9b8820/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/24317082-685b-468c-84c8-f9819ddcda7c/4b74aacd-c672-4688-bdea-a14a1d9b8820/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/24317082-685b-468c-84c8-f9819ddcda7c/4b74aacd-c672-4688-bdea-a14a1d9b8820/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0585586   0.0276115   0.0895057
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.2500000   0.0996753   0.4003247
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0932642   0.0521524   0.1343761
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1632653   0.0595626   0.2669680
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1177625   0.0914792   0.1440458
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.2237197   0.1737891   0.2736502
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1384615   0.1087520   0.1681711
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.2596154   0.1752870   0.3439437
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0553506   0.0360855   0.0746156
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0866142   0.0376597   0.1355687
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0800582   0.0597515   0.1003650
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1617647   0.0741844   0.2493450
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0419834   0.0294984   0.0544683
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0837004   0.0573680   0.1100329
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0854979   0.0504781   0.1205178
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          NA                0.1108987   0.0605197   0.1612776
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0933089   0.0873911   0.0992268
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1531008   0.1220302   0.1841714
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0603261   0.0561813   0.0644709
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0620864   0.0567230   0.0674499
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0495495   0.0209465   0.0781526
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301989   0.2823011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446763   0.2410380
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0542406   0.0389425   0.0695387
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.0894309   0.0429571   0.1359047
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0809249   0.0574431   0.1044066
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1359223   0.0696853   0.2021593
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0369004   0.0210177   0.0527831
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0629921   0.0207072   0.1052771
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0640466   0.0457263   0.0823669
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0882353   0.0207757   0.1556949
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0842105   0.0490950   0.1193261
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          NA                0.1070746   0.0577570   0.1563922
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0663712   0.0612983   0.0714441
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1041257   0.0775910   0.1306604
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0416970   0.0382090   0.0451849
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0408243   0.0363278   0.0453208
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0725720   0.0465559   0.0985881
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1647059   0.1297735   0.1996383
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0712695   0.0474505   0.0950884
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1720430   0.0952662   0.2488198
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0211161   0.0101649   0.0320673
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0895522   0.0211337   0.1579708
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0419834   0.0294984   0.0544683
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0837004   0.0573680   0.1100329
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0328050   0.0289350   0.0366750
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0655022   0.0428423   0.0881621
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0300179   0.0265707   0.0334650
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0348995   0.0301042   0.0396948


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0826772   0.0487426   0.1166117
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.1074380   0.0683415   0.1465345
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1460432   0.1145875   0.1774988
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   ki1119695-PROBIT          BELARUS        NA                   NA                0.0864656   0.0516689   0.1212624
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0964581   0.0906120   0.1023042
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0610001   0.0575046   0.0644957
0-6 months    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0629921   0.0330555   0.0929287
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0867769   0.0512358   0.1223179
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0636298   0.0408673   0.0863923
0-6 months    ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1119695-PROBIT          BELARUS        NA                   NA                0.0850816   0.0501716   0.1199915
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0683402   0.0633339   0.0733464
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0413628   0.0383754   0.0443502
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0971026   0.0697212   0.1244840
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0345469   0.0306862   0.0384077
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0318915   0.0289933   0.0347896


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.2692308   1.9172672    9.506412
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.7505669   0.8079836    3.792756
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.8997529   1.5967457    2.260260
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     1.8750000   1.2703809    2.767379
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.5648294   0.8057378    3.039067
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.0205882   1.1112781    3.673947
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.9936579   1.3184236    3.014715
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.2970920   0.8695100    1.934937
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.6407948   1.3265202    2.029526
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.0291802   0.9287890    1.140422
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.1534091   1.1694063    8.503450
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.9693878   0.8390927    4.622240
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.6487805   1.2017308    2.262135
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     1.6796117   0.9525624    2.961586
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.7070866   0.7690289    3.789382
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     1.3776738   0.6090195    3.116460
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.2715105   0.8567076    1.887154
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.5688391   1.2023615    2.047018
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     0.9790711   0.8633205    1.110341
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     2.2695502   1.7245985    2.986700
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.4139785   1.3822853    4.215694
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.2409382   1.6843541   10.678014
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.9936579   1.3184236    3.014715
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.9967126   1.3854146    2.877739
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.1626248   0.9776236    1.382635


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.0241186    0.0032585   0.0449787
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.0141738   -0.0086912   0.0370388
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.0282807    0.0180150   0.0385463
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.0201923    0.0048749   0.0355097
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.0059349   -0.0040953   0.0159652
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0073590   -0.0009086   0.0156266
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0058873    0.0019629   0.0098118
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0009677   -0.0006353   0.0025707
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0031492    0.0014624   0.0048359
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0006741   -0.0017401   0.0030883
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.0134426   -0.0034159   0.0303011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.0142380   -0.0072807   0.0357567
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.0093892    0.0000037   0.0187746
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.0091073   -0.0026406   0.0208552
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.0049531   -0.0036567   0.0135629
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0021786   -0.0041367   0.0084939
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0008711   -0.0006676   0.0024097
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0019690    0.0005503   0.0033877
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                -0.0003342   -0.0023157   0.0016474
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.0245305    0.0179082   0.0311529
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.0172914    0.0031314   0.0314514
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0062811   -0.0002381   0.0128003
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0058873    0.0019629   0.0098118
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0017419    0.0005075   0.0029764
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0018736   -0.0003232   0.0040704


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.2917203    0.0252675   0.4853356
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.1319251   -0.1037369   0.3172702
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.1936459    0.1368505   0.2467041
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.1272727    0.0272569   0.2170051
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.0968410   -0.0799060   0.2446600
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0841824   -0.0136139   0.1725431
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.1229841    0.0318389   0.2055487
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0111917   -0.0085852   0.0305808
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0326483    0.0150931   0.0498905
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0110502   -0.0293008   0.0498193
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.2134009   -0.0806932   0.4274618
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.1640760   -0.1141862   0.3728437
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.1475592    0.0360695   0.2461537
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.1011561   -0.0369306   0.2208539
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.1183448   -0.1080833   0.2985040
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0328967   -0.0669351   0.1233873
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0102379   -0.0089642   0.0290746
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0288112    0.0079226   0.0492600
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                -0.0080789   -0.0571819   0.0387434
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.2526251    0.1668217   0.3295921
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.1952487    0.0275072   0.3340571
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.2292609   -0.0217519   0.4186077
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.1229841    0.0318389   0.2055487
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0504219    0.0144403   0.0850898
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0587485   -0.0123344   0.1248401

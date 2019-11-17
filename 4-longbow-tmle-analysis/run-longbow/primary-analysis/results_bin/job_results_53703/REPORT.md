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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

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
![](/tmp/2cb54871-0580-4e88-8204-6aac2fdf6024/bed9e184-e058-4c8e-be97-ebce38c14a07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2cb54871-0580-4e88-8204-6aac2fdf6024/bed9e184-e058-4c8e-be97-ebce38c14a07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2cb54871-0580-4e88-8204-6aac2fdf6024/bed9e184-e058-4c8e-be97-ebce38c14a07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2cb54871-0580-4e88-8204-6aac2fdf6024/bed9e184-e058-4c8e-be97-ebce38c14a07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0585586   0.0276115   0.0895057
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.2500000   0.0996753   0.4003247
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0932642   0.0521524   0.1343761
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1632653   0.0595626   0.2669680
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1170399   0.0910293   0.1430505
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.2251129   0.1771500   0.2730758
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1393422   0.1095514   0.1691330
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3016427   0.2217315   0.3815539
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0541812   0.0350957   0.0732668
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.1130133   0.0509766   0.1750500
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0812643   0.0605970   0.1019317
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1585400   0.0632013   0.2538786
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0421442   0.0296946   0.0545937
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0867307   0.0587173   0.1147441
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0855446   0.0505257   0.1205634
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          NA                0.1128709   0.0671329   0.1586089
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0933631   0.0874395   0.0992867
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1521544   0.1206199   0.1836889
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0603156   0.0561717   0.0644595
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0621331   0.0567658   0.0675005
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0495495   0.0209465   0.0781526
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301989   0.2823011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446763   0.2410380
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0536634   0.0383046   0.0690222
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.0919779   0.0468456   0.1371102
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0807842   0.0572918   0.1042767
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1348900   0.0674507   0.2023293
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0369004   0.0210177   0.0527831
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0629921   0.0207072   0.1052771
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0640466   0.0457263   0.0823669
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0882353   0.0207757   0.1556949
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0842604   0.0491528   0.1193679
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          NA                0.1111324   0.0650300   0.1572348
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0664611   0.0613794   0.0715428
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1021139   0.0749758   0.1292520
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0416910   0.0382067   0.0451754
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0407802   0.0362791   0.0452812
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0720040   0.0461785   0.0978295
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1624711   0.1252003   0.1997420
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0705970   0.0467821   0.0944120
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1853050   0.1075520   0.2630581
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0211161   0.0101649   0.0320673
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0895522   0.0211337   0.1579708
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0421476   0.0296730   0.0546221
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0866932   0.0595352   0.1138512
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0328348   0.0289576   0.0367121
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0715037   0.0471221   0.0958852
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0300946   0.0266364   0.0335528
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0348264   0.0300057   0.0396471


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
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.9233856   1.6072582    2.301691
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.1647618   1.5417636    3.039502
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.0858377   1.0859356    4.006424
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     1.9509168   1.0140181    3.753460
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     2.0579535   1.3592560    3.115802
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.3194392   0.9344272    1.863088
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.6297061   1.3120992    2.024193
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.0301346   0.9297742    1.141328
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.1534091   1.1694063    8.503450
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.9693878   0.8390927    4.622240
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.7139780   1.2871690    2.282312
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     1.6697561   0.9360159    2.978673
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.7070866   0.7690289    3.789382
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     1.3776738   0.6090195    3.116460
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.3189169   0.9373647    1.855779
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.5364465   1.1651885    2.025997
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     0.9781523   0.8628135    1.108909
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     2.2564177   1.6989922    2.996730
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.6248276   1.5324919    4.495763
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.2409382   1.6843541   10.678014
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     2.0568973   1.3933892    3.036357
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.1776781   1.5179674    3.124100
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.1572308   0.9719517    1.377829


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.0241186    0.0032585   0.0449787
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.0141738   -0.0086912   0.0370388
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.0290032    0.0180861   0.0399204
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.0193116    0.0038291   0.0347942
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.0071043   -0.0029311   0.0171397
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0061529   -0.0023461   0.0146518
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0057265    0.0018624   0.0095907
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0009210   -0.0007194   0.0025615
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0030950    0.0014023   0.0047878
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0006846   -0.0017257   0.0030949
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.0134426   -0.0034159   0.0303011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.0142380   -0.0072807   0.0357567
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.0099664    0.0006021   0.0193307
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.0092479   -0.0025307   0.0210266
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.0049531   -0.0036567   0.0135629
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0021786   -0.0041367   0.0084939
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0008212   -0.0007488   0.0023913
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0018791    0.0004504   0.0033077
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                -0.0003282   -0.0023009   0.0016444
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.0250986    0.0181449   0.0320522
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.0179639    0.0038173   0.0321105
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0062811   -0.0002381   0.0128003
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.0057231    0.0018433   0.0096029
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0017121    0.0004742   0.0029500
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0017968   -0.0004135   0.0040072


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.2917203    0.0252675   0.4853356
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.1319251   -0.1037369   0.3172702
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.1985936    0.1381627   0.2547872
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.1217219    0.0206040   0.2123999
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.1159207   -0.0606692   0.2631103
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0703853   -0.0308917   0.1617127
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.1196249    0.0302522   0.2007610
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0106522   -0.0094645   0.0303679
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0320866    0.0144633   0.0493947
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0112228   -0.0290614   0.0499300
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                 0.2134009   -0.0806932   0.4274618
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                 0.1640760   -0.1141862   0.3728437
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.1566308    0.0477481   0.2530637
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.1027178   -0.0357826   0.2226986
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                 0.1183448   -0.1080833   0.2985040
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0328967   -0.0669351   0.1233873
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                 0.0096523   -0.0098078   0.0287373
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0274957    0.0064497   0.0480958
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                -0.0079356   -0.0568119   0.0386802
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                 0.2584747    0.1709436   0.3367644
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                 0.2028419    0.0350326   0.3414689
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                 0.2292609   -0.0217519   0.4186077
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                 0.1195536    0.0296768   0.2011056
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                 0.0495590    0.0134460   0.0843500
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                 0.0563427   -0.0152058   0.1228486

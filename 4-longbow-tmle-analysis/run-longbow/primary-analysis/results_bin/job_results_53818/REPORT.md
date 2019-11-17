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
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      216     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1       22     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      275     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1       10     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      241     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       21     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      222     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       20     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      819    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      200    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      251    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      120    1390
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2453    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          1      309    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            0      377    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3216
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0    13183   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1       22   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      522   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        1   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     8868    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      411    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      467    9795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       49    9795
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      665     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1       27     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0      130     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       15     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0    15066   26803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1     1470   26803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     9353   26803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1      914   26803
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
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight            0       44     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight            1        5     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          0      230     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          1        8     238
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
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      950    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1       64    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      336    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            1       32    1382
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     9138    9756
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      109    9756
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      497    9756
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       12    9756
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          0      224     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight            0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight            1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0    15819   26696
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1      652   26696
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     9819   26696
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1      406   26696
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      227     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       20     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      214     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      758    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      179    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      231    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      109    1277
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2453    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight          1      309    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            0      377    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3216
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0    13188   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1        9   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      523   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        0   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     7818    8595
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      320    8595
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      419    8595
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       38    8595
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      657     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1       27     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0      124     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       15     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0     9700   17228
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1      916   17228
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     6031   17228
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1      581   17228


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
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a24e8f77-bfa2-4290-9977-99a512153ede/a11516ff-51c4-4e5d-9298-cfa5341de79c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a24e8f77-bfa2-4290-9977-99a512153ede/a11516ff-51c4-4e5d-9298-cfa5341de79c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a24e8f77-bfa2-4290-9977-99a512153ede/a11516ff-51c4-4e5d-9298-cfa5341de79c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a24e8f77-bfa2-4290-9977-99a512153ede/a11516ff-51c4-4e5d-9298-cfa5341de79c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1253254   0.0812003   0.1694505
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.3633739   0.1595667   0.5671811
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.2017920   0.1448281   0.2587558
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.2342062   0.1004418   0.3679707
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1948673   0.1552322   0.2345025
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3257777   0.2614398   0.3901156
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1851826   0.1516648   0.2187003
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3768819   0.2793008   0.4744630
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1149924   0.0879926   0.1419922
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2193264   0.1432841   0.2953687
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0802747   0.0599379   0.1006115
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.2329468   0.1273880   0.3385055
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1119462   0.0922969   0.1315955
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1707870   0.1163147   0.2252593
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0442624   0.0400735   0.0484513
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1046708   0.0771267   0.1322148
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0389154   0.0244765   0.0533542
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1045680   0.0537843   0.1553516
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0888717   0.0840336   0.0937098
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0890664   0.0833655   0.0947673
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0673575   0.0319236   0.1027914
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1020408   0.0171102   0.1869715
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0626129   0.0403561   0.0848698
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.0878116   0.0400469   0.1355764
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0599626   0.0395211   0.0804040
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1339257   0.0668085   0.2010429
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0353887   0.0198922   0.0508851
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0933772   0.0423646   0.1443899
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0117520   0.0095557   0.0139483
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0250273   0.0113012   0.0387534
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0394682   0.0363174   0.0426191
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0398934   0.0359575   0.0438293
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1149756   0.0709265   0.1590247
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.4171349   0.2217208   0.6125491
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1779601   0.1227317   0.2331885
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.2732899   0.1389769   0.4076029
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1902044   0.1515857   0.2288231
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3203367   0.2641083   0.3765651
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1721506   0.1370542   0.2072470
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3917609   0.2893039   0.4942179
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1015307   0.0749760   0.1280854
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2222745   0.1376826   0.3068663
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0722535   0.0525325   0.0919745
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.2337620   0.1300480   0.3374759
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1121451   0.0924364   0.1318538
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1734694   0.1165859   0.2303529
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0393045   0.0350789   0.0435300
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0942973   0.0665627   0.1220318
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0393803   0.0247688   0.0539919
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1082356   0.0555771   0.1608941
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0862636   0.0802451   0.0922822
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0879110   0.0810604   0.0947615


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1535433   0.1091205   0.1979661
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2302158   0.1856981   0.2747335
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1200249   0.0999720   0.1400777
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0469627   0.0427729   0.0511526
0-24 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.0501792   0.0353804   0.0649781
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0889453   0.0850200   0.0928705
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0743802   0.0412530   0.1075073
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0694645   0.0441638   0.0947653
0-6 months    ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0124026   0.0102064   0.0145989
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0396314   0.0371179   0.0421449
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2008547   0.1494120   0.2522974
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2255286   0.1871466   0.2639106
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1200249   0.0999720   0.1400777
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0416521   0.0374281   0.0458762
6-24 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.0510328   0.0359888   0.0660768
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0868934   0.0822223   0.0915646


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     2.899443   1.4963385   5.618226
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.160632   0.6120396   2.200947
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.671792   1.4298729   1.954642
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.035191   1.4827635   2.793435
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.907312   1.2542646   2.900376
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.901870   1.7264473   4.877561
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.525616   1.0958445   2.123938
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.364777   1.7878743   3.127832
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.687061   1.4579167   4.952476
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.002191   0.9268660   1.083638
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.514914   0.5659383   4.055148
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.402452   0.8673095   2.267784
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.233489   1.2180196   4.095560
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.638621   1.3091853   5.318055
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.129613   1.1930857   3.801280
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.010773   0.8930296   1.144040
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.628030   1.9781301   6.654062
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.535681   0.8574064   2.750523
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.684171   1.3895141   2.041311
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.275687   1.6328771   3.171549
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.189234   1.3805410   3.471642
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     3.235302   1.9217736   5.446624
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.546829   1.1019711   2.171274
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.399149   1.7540864   3.281433
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.748468   1.4902851   5.068882
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.019097   0.9217184   1.126762


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0282179    0.0044079   0.0520279
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0172163   -0.0117379   0.0461705
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0353485    0.0226590   0.0480380
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0343687    0.0165863   0.0521512
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0195367    0.0043628   0.0347107
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0137650    0.0039528   0.0235773
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0080787    0.0003209   0.0158364
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0027003    0.0013291   0.0040715
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0112638    0.0021488   0.0203788
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0000736   -0.0025804   0.0027276
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0070227   -0.0116936   0.0257389
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0068516   -0.0042304   0.0179336
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0123847    0.0006827   0.0240867
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0094544    0.0000366   0.0188722
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0006506   -0.0000485   0.0013497
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0001632   -0.0017198   0.0020461
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0314679    0.0057402   0.0571956
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0228946   -0.0066748   0.0524640
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0353242    0.0224760   0.0481723
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0381815    0.0187188   0.0576441
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0208184    0.0053987   0.0362381
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0140478    0.0041691   0.0239266
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0078798    0.0001667   0.0155928
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0023476    0.0009649   0.0037304
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0116525    0.0024036   0.0209014
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0006298   -0.0027413   0.0040008


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1837780    0.0201174   0.3201039
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0786102   -0.0627941   0.2012008
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1535450    0.1046127   0.1998033
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1565407    0.0733998   0.2322216
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1452231    0.0276669   0.2485666
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1463747    0.0402463   0.2407675
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0673082    0.0023098   0.1280720
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0574992    0.0282513   0.0858667
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2244724    0.0339109   0.3774455
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0008274   -0.0294627   0.0302263
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0944157   -0.1916684   0.3118195
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0986345   -0.0596799   0.2332970
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1711841    0.0004666   0.3127435
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.2108331   -0.0155188   0.3867328
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0524554   -0.0048601   0.1065018
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0041172   -0.0445480   0.0505150
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2148808    0.0291108   0.3651056
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1139860   -0.0442465   0.2482418
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1566284    0.0953086   0.2137919
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1815295    0.0863856   0.2667651
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1701557    0.0389472   0.2834508
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1627766    0.0464365   0.2649225
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0656511    0.0009259   0.1261830
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0563633    0.0230312   0.0885581
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2283331    0.0386947   0.3805613
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0072478   -0.0323565   0.0453329

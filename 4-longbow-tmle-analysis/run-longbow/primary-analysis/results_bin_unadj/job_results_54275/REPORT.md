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

unadjusted

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
![](/tmp/7fda10d4-980b-4d05-bd74-7bef576eb5a9/8933a970-cf0b-4d07-a64b-21db474c7c9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7fda10d4-980b-4d05-bd74-7bef576eb5a9/8933a970-cf0b-4d07-a64b-21db474c7c9a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7fda10d4-980b-4d05-bd74-7bef576eb5a9/8933a970-cf0b-4d07-a64b-21db474c7c9a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7fda10d4-980b-4d05-bd74-7bef576eb5a9/8933a970-cf0b-4d07-a64b-21db474c7c9a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1261261   0.0823684   0.1698839
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.3437500   0.1788633   0.5086367
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.2020725   0.1453045   0.2588406
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.2857143   0.1589634   0.4124652
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1962709   0.1562175   0.2363242
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3234501   0.2581832   0.3887171
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1865385   0.1530305   0.2200464
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3846154   0.2910390   0.4781918
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1143911   0.0875754   0.1412069
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2204724   0.1483179   0.2926270
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0800582   0.0597515   0.1003650
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.2352941   0.1344074   0.3361809
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1118755   0.0922063   0.1315446
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1696035   0.1137105   0.2254965
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0442936   0.0401071   0.0484801
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0949612   0.0696652   0.1202573
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0390173   0.0245815   0.0534532
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1034483   0.0538493   0.1530473
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0888970   0.0840618   0.0937321
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0890231   0.0833812   0.0946650
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0673575   0.0319236   0.1027914
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1020408   0.0171102   0.1869715
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0631164   0.0410305   0.0852022
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.0869565   0.0395597   0.1343533
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0597303   0.0393252   0.0801353
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1359223   0.0696853   0.2021593
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0369004   0.0210177   0.0527831
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0787402   0.0318631   0.1256172
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0117876   0.0095877   0.0139875
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0235756   0.0103942   0.0367571
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0395847   0.0364302   0.0427392
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0397066   0.0357882   0.0436250
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1153846   0.0718757   0.1588935
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.3548387   0.1860562   0.5236212
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1774194   0.1224005   0.2324382
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.2916667   0.1628062   0.4205271
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1910352   0.1526137   0.2294567
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.3205882   0.2642928   0.3768837
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1737194   0.1386431   0.2087957
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.3870968   0.2880105   0.4861830
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0990099   0.0729390   0.1250808
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.2314815   0.1518699   0.3110930
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0723982   0.0526588   0.0921376
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.2238806   0.1240001   0.3237611
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1118755   0.0922063   0.1315446
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.1696035   0.1137105   0.2254965
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0393217   0.0350987   0.0435447
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0831510   0.0578348   0.1084671
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0394737   0.0248724   0.0540750
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          NA                0.1079137   0.0563022   0.1595252
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0862849   0.0803226   0.0922471
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          NA                0.0878705   0.0810619   0.0946792


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     2.725446   1.5077902   4.926454
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.413919   0.8363302   2.390405
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.647978   1.4094071   1.926933
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.061856   1.5237599   2.789973
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.927356   1.2886319   2.882670
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.939037   1.7858679   4.836831
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.516003   1.0747470   2.138424
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.143906   1.6160348   2.844204
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.651341   1.4469416   4.858253
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.001419   0.9268263   1.082015
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.514914   0.5659383   4.055148
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.377717   0.8573135   2.214015
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.275603   1.2549739   4.126276
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.133858   1.0235691   4.448504
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.000036   1.1092975   3.606015
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.003079   0.8862220   1.135344
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.075269   1.6759837   5.642822
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.643939   0.9582162   2.820383
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     1.678163   1.3818532   2.038010
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.228288   1.6083523   3.087176
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     2.337963   1.5160851   3.605385
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     3.092351   1.8332326   5.216268
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     1.516003   1.0747470   2.138424
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.114634   1.5311744   2.920422
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5          MALAWI         Underweight          Normal weight     2.733813   1.4934330   5.004398
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Underweight          Normal weight     1.018377   0.9217283   1.125161


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0274172    0.0041557   0.0506786
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0169357   -0.0115035   0.0453750
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0339450    0.0213915   0.0464985
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0330128    0.0154622   0.0505635
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0201380    0.0051885   0.0350875
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0139815    0.0041850   0.0237780
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0081494    0.0002936   0.0160053
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0026692    0.0013000   0.0040384
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0111619    0.0020615   0.0202622
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0000483   -0.0025897   0.0026864
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0070227   -0.0116936   0.0257389
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0063482   -0.0045620   0.0172583
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0126170    0.0009257   0.0243084
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0079427   -0.0015352   0.0174206
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0006150   -0.0000841   0.0013142
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0000467   -0.0018348   0.0019281
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0310589    0.0062478   0.0558700
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0234353   -0.0059102   0.0527808
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0344934    0.0217259   0.0472609
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0366127    0.0173451   0.0558804
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0233392    0.0080481   0.0386303
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0139032    0.0040342   0.0237722
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0081494    0.0002936   0.0160053
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0023304    0.0009500   0.0037108
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.0115591    0.0023321   0.0207862
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0006086   -0.0027278   0.0039449


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.1785632    0.0197601   0.3116395
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0773292   -0.0613790   0.1979100
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1474485    0.0981421   0.1940592
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1503650    0.0683390   0.2251691
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1496925    0.0341409   0.2514200
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1486766    0.0427972   0.2428444
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0678978    0.0020361   0.1294128
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0568359    0.0276410   0.0851542
0-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2224401    0.0322777   0.3752346
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0005432   -0.0295616   0.0297678
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0944157   -0.1916684   0.3118195
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0913872   -0.0642458   0.2242608
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1743952    0.0039371   0.3156825
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1771218   -0.0528479   0.3568600
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0495877   -0.0077777   0.1036876
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0011779   -0.0474428   0.0475417
6-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2120879    0.0346195   0.3569319
6-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1166781   -0.0401880   0.2498879
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1529445    0.0925689   0.2093031
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1740710    0.0799847   0.2585356
6-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1907591    0.0616416   0.3021100
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.1611003    0.0448187   0.2632261
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0678978    0.0020361   0.1294128
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0559497    0.0226843   0.0880828
6-24 months   ki1148112-LCNI-5          MALAWI         Normal weight        NA                0.2265038    0.0374642   0.3784164
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     Normal weight        NA                0.0070037   -0.0321789   0.0446989

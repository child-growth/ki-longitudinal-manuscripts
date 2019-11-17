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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        mbmi             ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      154     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       68     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       15     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       17     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      194     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       17     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        8     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0      105     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       88     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       29     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0      164     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       74     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      260     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       25     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      205     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       57     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      210     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       32     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        4     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      646    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      373    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      173    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      198    1390
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      282     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      238     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       60     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      364     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      178     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       64     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       63     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      470     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      217     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       36     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       32     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1764    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      543    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       25    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1       13    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2161    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      602    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      323    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3217
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0     9515   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     3690   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      346   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1      177   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7029    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     2252    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      347    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      169    9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      651     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       41     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      120     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0    12433   26836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     4127   26836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     7478   26836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     2798   26836
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      177     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       45     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       19     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       13     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      199     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       12     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        8     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0      135     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       58     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       28     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       21     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0      190     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       48     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0      274     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      234     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       28     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      230     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       12     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       13     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      819    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      195    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      266    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      103    1383
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      341     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      178     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       59     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       44     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      414     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      128     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       79     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       48     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      513     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      174     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       48     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       20     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1986    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      321    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       30    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        8    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              0     9606   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              1     3599   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                0      351   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                1      172   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7587    9760
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1664    9760
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      391    9760
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      118    9760
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0      220     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        4     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0    13683   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     2817   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     8344   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1895   26739
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      174     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       35     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       23     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        8     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      191     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1        6     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        9     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0      138     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       48     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       32     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       16     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0      199     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       36     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      248     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       16     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      210     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       37     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      207     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       25     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      689    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      248    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      195    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      145    1277
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      327     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      122     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       56     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       37     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      434     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1       72     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       81     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       27     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      585     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1       78     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       49     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       18     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1630    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      312    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       24    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        6    1972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2161    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      602    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      323    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3217
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0    13066   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1      131   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      513   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1       10   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7367    8597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1      772    8597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      382    8597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       76    8597
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      646     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       38     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      114     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0     8966   17246
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     1661   17246
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     5456   17246
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1163   17246


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/f77d5355-885e-4990-8001-670d58491ccf/5c481d7c-135a-4bd1-bf4e-0d316c9842af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f77d5355-885e-4990-8001-670d58491ccf/5c481d7c-135a-4bd1-bf4e-0d316c9842af/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f77d5355-885e-4990-8001-670d58491ccf/5c481d7c-135a-4bd1-bf4e-0d316c9842af/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f77d5355-885e-4990-8001-670d58491ccf/5c481d7c-135a-4bd1-bf4e-0d316c9842af/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.3063481   0.2445857   0.3681106
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5255018   0.3366094   0.7143943
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.4565597   0.3859982   0.5271212
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5895336   0.4446885   0.7343787
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3631570   0.3074751   0.4188389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5387566   0.4532303   0.6242828
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.4566760   0.4138052   0.4995468
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.5651654   0.4692642   0.6610666
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.3271326   0.2873286   0.3669366
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.4994433   0.4094986   0.5893880
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.3173852   0.2823657   0.3524048
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.5258341   0.4032767   0.6483916
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2354192   0.2179301   0.2529083
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3527702   0.2548638   0.4506767
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2177320   0.1880652   0.2473988
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2846344   0.2221988   0.3470700
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2794708   0.2177777   0.3411640
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3405362   0.2605320   0.4205403
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2428922   0.2341610   0.2516234
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3325687   0.2898333   0.3753041
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0588249   0.0412178   0.0764321
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1685723   0.1067523   0.2303922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.2490955   0.2414545   0.2567365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.2725251   0.2631167   0.2819336
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1995137   0.1466230   0.2524044
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4226305   0.2267081   0.6185530
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.3013765   0.2363963   0.3663567
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.4402174   0.2957998   0.5846351
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1904258   0.1492800   0.2315716
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2863722   0.2170902   0.3556543
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3423160   0.3013931   0.3832389
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4175053   0.3210970   0.5139136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2335651   0.1977696   0.2693607
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3963613   0.3084794   0.4842433
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2541315   0.2213968   0.2868662
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.3160612   0.1899116   0.4422108
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1391417   0.1248886   0.1533949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2105263   0.1264891   0.2945635
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2724732   0.2100478   0.3348987
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3353895   0.2536639   0.4171150
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1801259   0.1722885   0.1879632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.2335674   0.1962413   0.2708936
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.1706527   0.1637308   0.1775747
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.1852379   0.1771179   0.1933579
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1674641   0.1167366   0.2181917
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.2580645   0.1037094   0.4124197
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.2609478   0.1976287   0.3242670
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.3454389   0.2144388   0.4764390
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.2632362   0.2130544   0.3134180
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.4287199   0.3478371   0.5096028
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.2691393   0.2280973   0.3101812
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.3995402   0.2976975   0.5013828
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1441987   0.1133185   0.1750790
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.2224202   0.1407034   0.3041370
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1176589   0.0931065   0.1422114
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.2640977   0.1549626   0.3732328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1606591   0.1441588   0.1771595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2000001   0.1128773   0.2871230
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2179010   0.1882240   0.2475779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2788196   0.2188321   0.3388071
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0099407   0.0067065   0.0131750
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.0190768   0.0071212   0.0310325
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0949149   0.0885427   0.1012872
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1717310   0.1362666   0.2071954
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0551530   0.0379655   0.0723406
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1794449   0.1151379   0.2437519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.1562237   0.1488943   0.1635530
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.1757621   0.1661097   0.1854145


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4107914   0.3512139   0.4703688
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816871   0.2197838   0.3435903
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2471165   0.2385749   0.2556580
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580489   0.2515797   0.2645181
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154736   0.1691818   0.2617655
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746941   0.2120609   0.3373272
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1825820   0.1749172   0.1902467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762220   0.1706009   0.1818431
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3077525   0.2591695   0.3563356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102770   0.0071241   0.0134298
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0986391   0.0923357   0.1049424
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1637481   0.1576337   0.1698625


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.715375   1.1384894   2.584574
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.291252   0.9655091   1.726894
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.483536   1.3067577   1.684230
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.237563   1.0191541   1.502778
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.526730   1.2286301   1.897158
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.656769   1.2796756   2.144985
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.498477   1.1243621   1.997073
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.307269   1.0040317   1.702090
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.218503   1.0520667   1.411270
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.369203   1.1981153   1.564722
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     2.865660   1.7853955   4.599544
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     1.094059   1.0498423   1.140138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     2.118304   1.2462705   3.600511
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.460689   0.9857831   2.164385
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.503852   1.2817535   1.764435
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.219649   0.9405657   1.581541
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.697005   1.2954533   2.223027
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.243691   0.8174348   1.892222
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.513035   1.0020087   2.284685
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.230908   1.0568120   1.433684
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.296690   1.0987417   1.530301
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     1.085467   1.0273671   1.146853
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.541014   0.7881894   3.012884
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.323786   0.8445391   2.074988
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.628651   1.3151312   2.016913
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.484511   1.1025084   1.998871
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.542456   1.0081551   2.359925
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     2.244604   1.4124436   3.567042
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.244873   0.7957071   1.947586
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.279570   0.9811968   1.668676
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.919062   0.9452924   3.895936
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.809315   1.4560990   2.248212
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     3.253583   2.0232703   5.232025
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     1.125067   1.0506554   1.204749


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0282975    0.0026990   0.0538960
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0269114   -0.0055585   0.0593812
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0476344    0.0311857   0.0640831
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0208881    0.0030643   0.0387119
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0331066    0.0139578   0.0522553
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0124161    0.0005983   0.0242338
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0016810   -0.0008513   0.0042133
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0101200   -0.0000428   0.0202829
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0022162    0.0001014   0.0043310
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0042243    0.0019988   0.0064498
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0200281    0.0085567   0.0314995
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0089534    0.0048064   0.0131004
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0288328    0.0046078   0.0530578
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0250698   -0.0068245   0.0569641
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0250478    0.0141265   0.0359691
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0145972   -0.0027370   0.0319314
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0295141    0.0113428   0.0476854
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0028221   -0.0076564   0.0133007
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0011568   -0.0010052   0.0033187
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0022208    0.0000629   0.0043787
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0024561    0.0004796   0.0044327
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0055693    0.0018086   0.0093299
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0117026   -0.0096347   0.0330398
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0125565   -0.0186391   0.0437520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0445164    0.0248597   0.0641730
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0242187    0.0051595   0.0432779
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0170390    0.0009191   0.0331589
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0138479    0.0033073   0.0243885
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0005985   -0.0016285   0.0028255
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0099511   -0.0000730   0.0199751
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0003363   -0.0002264   0.0008989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0037241    0.0018420   0.0056062
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0213962    0.0097792   0.0330132
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0075244    0.0030983   0.0119505


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0845597    0.0044334   0.1582371
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0556629   -0.0142574   0.1207631
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1159576    0.0778538   0.1524869
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0437389    0.0055477   0.0804634
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0919016    0.0370596   0.1436201
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0376472    0.0011238   0.0728351
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0070898   -0.0036786   0.0177427
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0444148   -0.0020512   0.0887261
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0078677    0.0003335   0.0153451
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0170943    0.0080538   0.0260524
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2539928    0.1057578   0.3776555
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0346964    0.0184784   0.0506466
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1262677    0.0151164   0.2248749
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0767961   -0.0261376   0.1694044
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1162454    0.0731880   0.1573024
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0408985   -0.0089624   0.0882955
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1121870    0.0408496   0.1782187
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0109831   -0.0306486   0.0509331
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0082450   -0.0073186   0.0235682
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0080847    0.0001903   0.0159168
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0134521    0.0025753   0.0242104
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0316037    0.0099491   0.0527846
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0653166   -0.0608054   0.1764436
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0459096   -0.0749755   0.1532006
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1446499    0.0768921   0.2074342
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0825567    0.0154641   0.1450772
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1056765    0.0013665   0.1990910
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1053018    0.0234113   0.1803255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0037114   -0.0102191   0.0174499
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0436734   -0.0021789   0.0874279
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0327194   -0.0251695   0.0873394
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0377549    0.0186057   0.0565305
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2795089    0.1261512   0.4059528
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0459513    0.0185851   0.0725545

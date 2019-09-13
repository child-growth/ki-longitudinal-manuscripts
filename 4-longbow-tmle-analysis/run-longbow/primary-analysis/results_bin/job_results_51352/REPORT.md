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
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0      107     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       86     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       29     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0      169     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       69     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      261     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       24     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      207     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       55     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      214     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       28     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        4     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      666    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      376    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      152    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      195    1389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      282     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      238     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       60     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      364     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      178     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       64     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       63     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      469     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      218     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       36     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       32     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1764    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      543    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       25    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1       13    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2136    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      591    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      320    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3178
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0     9515   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     3690   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      346   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1      177   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7048    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     2233    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      348    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      168    9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      651     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       41     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      120     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      178     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       44     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       19     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       13     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      199     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       12     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        8     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0      138     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       55     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       28     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       21     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0      195     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       43     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0      274     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      236     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       26     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      232     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       10     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       13     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      841    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      197    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      243    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      101    1382
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      341     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      178     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       59     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       44     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      414     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      128     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       79     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       48     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      512     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      175     755
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7587    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1663    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      391    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      118    9759
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0      220     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        4     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      174     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       35     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        9     240
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
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      249     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       15     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      211     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       36     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      209     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       23     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      701    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      254    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      182    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      139    1276
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      326     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      122     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       56     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       37     541
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2136    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      591    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      320    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3178
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0    13066   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1      131   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      513   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1       10   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7351    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1      751    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      382    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       75    8559
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      646     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       38     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      114     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25     823


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
![](/tmp/220c318b-965e-4dd0-b7a1-bdccbf75cf9c/7e24485e-c751-460f-9ab6-becd734c9aaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/220c318b-965e-4dd0-b7a1-bdccbf75cf9c/7e24485e-c751-460f-9ab6-becd734c9aaf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/220c318b-965e-4dd0-b7a1-bdccbf75cf9c/7e24485e-c751-460f-9ab6-becd734c9aaf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/220c318b-965e-4dd0-b7a1-bdccbf75cf9c/7e24485e-c751-460f-9ab6-becd734c9aaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.3066126   0.2448711   0.3683540
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5391703   0.3606734   0.7176671
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.4462957   0.3759340   0.5166574
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5966602   0.4543010   0.7390195
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3595104   0.3092616   0.4097591
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5689667   0.4876471   0.6502862
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.4564031   0.4135061   0.4993001
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.5784406   0.4814071   0.6754741
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.3277274   0.2878770   0.3675778
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.4977088   0.4044159   0.5910016
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.3178313   0.2828304   0.3528322
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.5494554   0.4234546   0.6754561
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2353493   0.2178765   0.2528222
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3447707   0.2411329   0.4484084
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2166886   0.1869865   0.2463908
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2884686   0.2271791   0.3497581
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2795158   0.2178144   0.3412172
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3419636   0.2622569   0.4216702
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2408817   0.2321743   0.2495891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3328485   0.2902587   0.3754383
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0587438   0.0412647   0.0762229
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1729449   0.1093253   0.2365645
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1961149   0.1435126   0.2487173
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.3786746   0.1737055   0.5836436
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.2832919   0.2192844   0.3472994
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.4050268   0.2627554   0.5472982
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1890090   0.1494414   0.2285766
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2991012   0.2274901   0.3707123
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3427253   0.3018173   0.3836332
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4291107   0.3327584   0.5254630
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2330605   0.1972296   0.2688914
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3936591   0.3031742   0.4841440
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2548731   0.2221760   0.2875703
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.3074849   0.1753978   0.4395721
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1391417   0.1248886   0.1533949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2105263   0.1264891   0.2945635
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2726209   0.2101381   0.3351036
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3302192   0.2520103   0.4084281
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1799806   0.1721442   0.1878170
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.2342381   0.1961979   0.2722783
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1674641   0.1167366   0.2181917
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.2903226   0.1302029   0.4504423
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.2592273   0.1961230   0.3223317
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.3359278   0.2018965   0.4699591
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.2654131   0.2257227   0.3051035
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.4339355   0.3566321   0.5112388
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.2703760   0.2292081   0.3115438
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.3962682   0.2932618   0.4992746
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1436536   0.1127869   0.1745203
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.2363897   0.1542422   0.3185373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1175412   0.0929362   0.1421462
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.3084996   0.1695883   0.4474108
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1606591   0.1441588   0.1771595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2000001   0.1128773   0.2871230
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2165650   0.1869610   0.2461690
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2857285   0.2272893   0.3441678
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0099456   0.0067101   0.0131811
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.0191623   0.0069199   0.0314047
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0927152   0.0863959   0.0990345
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1703089   0.1340610   0.2065567
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0552477   0.0381403   0.0723550
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1818442   0.1165350   0.2471535


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4110871   0.3516836   0.4704906
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816871   0.2197838   0.3435903
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2450750   0.2365573   0.2535928
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2156295   0.1693905   0.2618686
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746941   0.2120609   0.3373272
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1824982   0.1748345   0.1901620
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3079937   0.2595409   0.3564465
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102770   0.0071241   0.0134298
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0965066   0.0902505   0.1027627
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.758474   1.1961049   2.585251
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.336917   1.0042406   1.779799
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.582615   1.4625822   1.712500
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.267390   1.0456419   1.536164
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.518667   1.2144503   1.899089
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.728764   1.3398700   2.230534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.464932   1.0748225   1.996631
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.331259   1.0247880   1.729382
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.223414   1.0562380   1.417050
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.381792   1.2097302   1.578328
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     2.944054   1.8336445   4.726899
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.930881   1.0590021   3.520580
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.429715   0.9418062   2.170390
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.582471   1.3487149   1.856741
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.252054   0.9711512   1.614208
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.689085   1.2807447   2.227617
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.206424   0.7704046   1.889212
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.513035   1.0020087   2.284685
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.211276   1.0430281   1.406664
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.301463   1.1000072   1.539813
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.733641   0.9240297   3.252611
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.295881   0.8112771   2.069957
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.634944   1.4729736   1.814724
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.465619   1.0835708   1.982371
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.645554   1.0929689   2.477516
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     2.624609   1.5975653   4.311919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.244873   0.7957071   1.947586
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.319366   1.0223661   1.702646
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.926711   0.9356491   3.967531
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.836903   1.4690031   2.296940
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     3.291437   2.0475475   5.290993


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0280331    0.0025558   0.0535104
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0289109   -0.0034877   0.0613096
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0515767    0.0397394   0.0634141
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0211610    0.0033894   0.0389326
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0325117    0.0131953   0.0518281
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0132945    0.0014366   0.0251525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0017509   -0.0007759   0.0042776
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0104983    0.0000158   0.0209808
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0021713    0.0000546   0.0042879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0041933    0.0019748   0.0064119
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0201092    0.0086886   0.0315299
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0282945    0.0038993   0.0526897
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0307577   -0.0012842   0.0627997
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0266206    0.0150476   0.0381935
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0141879   -0.0031275   0.0315033
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0300187    0.0117511   0.0482863
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0034050   -0.0069977   0.0138078
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0011568   -0.0010052   0.0033187
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0020732   -0.0000410   0.0041873
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0025176    0.0005402   0.0044950
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0158692   -0.0064461   0.0381845
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0142769   -0.0164798   0.0450337
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0425806    0.0288580   0.0563032
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0235242    0.0043503   0.0426982
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0175842    0.0015313   0.0336371
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0139657    0.0033783   0.0245531
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0005985   -0.0016285   0.0028255
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0106219    0.0001351   0.0211087
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0003314   -0.0002320   0.0008948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0037914    0.0019119   0.0056708
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0213016    0.0096945   0.0329086


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0837696    0.0040366   0.1571194
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0608387   -0.0102308   0.1269084
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1254642    0.1077208   0.1428548
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0443104    0.0062169   0.0809437
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0902504    0.0349543   0.1423780
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0401494    0.0036548   0.0753073
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0073845   -0.0033587   0.0180127
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0462100   -0.0019459   0.0920514
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0077081    0.0001647   0.0151946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0171104    0.0080227   0.0261149
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2550217    0.1081959   0.3776743
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1260843    0.0121318   0.2268923
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0979390   -0.0099349   0.1942907
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1234551    0.0811654   0.1637983
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0397517   -0.0100438   0.0870923
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1141052    0.0423568   0.1804780
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0131835   -0.0279213   0.0526446
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0082450   -0.0073186   0.0235682
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0075472   -0.0002204   0.0152545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0137952    0.0029085   0.0245631
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0865594   -0.0421507   0.1993732
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0522001   -0.0669570   0.1580498
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1382516    0.1051017   0.1701735
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0800415    0.0126693   0.1428165
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1090575    0.0051433   0.2021177
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1061975    0.0238320   0.1816133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0037114   -0.0102191   0.0174499
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0467541   -0.0013764   0.0925712
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0322433   -0.0257077   0.0869202
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0392862    0.0197455   0.0584373
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2782726    0.1256490   0.4042548

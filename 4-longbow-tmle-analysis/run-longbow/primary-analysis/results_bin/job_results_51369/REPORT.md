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
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0      177     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1       16     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       41     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1        8     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      229     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1        9     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      282     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        5     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      249     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1       13     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      236     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        6     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       13     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      927    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1      115    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      259    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       88    1389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      449     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       71     624
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     2615    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      112    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      413    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1       38    3178
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    12076   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1     1129   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      465   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1       58   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     8420    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      861    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      438    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       78    9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      685     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1        7     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0      143     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1        2     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      211     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       11     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       27     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        5     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      209     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 0       10     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               0      180     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               1       13     242
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      258     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        4     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      239     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        3     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       14     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        0     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      987    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       51    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      307    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       37    1382
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     8637    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      613    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      456    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       53    9759
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               0      224     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      207     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       28     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        3     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0      195     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        9     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0      183     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1        3     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       46     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1        2     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      233     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      262     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        5     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        0     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0      238     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        9     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      229     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      889    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       66    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      263    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       58    1276
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      417     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       31     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       77     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       16     541
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               0     2615    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight               1      112    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 0      413    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                 1       38    3178
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0    13179   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1       18   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      521   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1        2   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     7839    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      263    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      428    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       29    8559
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      677     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1        7     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0      137     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1        2     823


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
![](/tmp/4ea369d9-94e9-420c-8364-0b8605744556/a7f7b1e4-75ff-4607-981f-b4ad59504a1f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ea369d9-94e9-420c-8364-0b8605744556/a7f7b1e4-75ff-4607-981f-b4ad59504a1f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ea369d9-94e9-420c-8364-0b8605744556/a7f7b1e4-75ff-4607-981f-b4ad59504a1f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ea369d9-94e9-420c-8364-0b8605744556/a7f7b1e4-75ff-4607-981f-b4ad59504a1f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0585586   0.0276115   0.0895057
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.2500000   0.0996753   0.4003247
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0829016   0.0439201   0.1218830
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1632653   0.0595626   0.2669680
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.1097786   0.0845793   0.1349779
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.2550914   0.2070099   0.3031730
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1358362   0.1062917   0.1653808
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.2648878   0.1796782   0.3500975
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0543295   0.0352054   0.0734535
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.1065143   0.0487850   0.1642437
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0814134   0.0607146   0.1021121
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.1799320   0.0776275   0.2822365
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0411177   0.0287312   0.0535041
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0844259   0.0570942   0.1117576
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0855243   0.0505019   0.1205466
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          NA                0.1125921   0.0673063   0.1578780
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0928137   0.0869041   0.0987234
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.1528804   0.1207078   0.1850530
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0495495   0.0209465   0.0781526
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301989   0.2823011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0673575   0.0319236   0.1027914
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446763   0.2410380
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0483042   0.0314791   0.0651292
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1041261   0.0553696   0.1528826
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0810896   0.0575950   0.1045842
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1425338   0.0765594   0.2085082
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0369004   0.0210177   0.0527831
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          NA                0.0629921   0.0207072   0.1052771
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0640466   0.0457263   0.0823669
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0882353   0.0207757   0.1556949
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0842515   0.0491403   0.1193627
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          NA                0.1111004   0.0654188   0.1567821
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0663378   0.0612620   0.0714137
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0998192   0.0734072   0.1262311
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0690339   0.0464067   0.0916610
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          NA                0.1803070   0.1414414   0.2191727
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0684366   0.0449600   0.0919133
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          NA                0.1790187   0.1002966   0.2577407
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0211161   0.0101649   0.0320673
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          NA                0.0895522   0.0211337   0.1579708
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0411731   0.0287505   0.0535957
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          NA                0.0843722   0.0575681   0.1111764
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0324525   0.0285913   0.0363136
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          NA                0.0690665   0.0440358   0.0940972


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0826772   0.0487426   0.1166117
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.0991736   0.0614374   0.1369097
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1461483   0.1147335   0.1775631
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0471995   0.0353423   0.0590566
0-24 months   ki1119695-PROBIT          BELARUS        NA                   NA                0.0864656   0.0516689   0.1212624
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0958457   0.0900162   0.1016752
0-6 months    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0629921   0.0330555   0.0929287
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0826446   0.0478818   0.1174075
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0636758   0.0409275   0.0864242
0-6 months    ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1119695-PROBIT          BELARUS        NA                   NA                0.0850816   0.0501716   0.1199915
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0682447   0.0632414   0.0732480
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0971787   0.0698067   0.1245507
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0471995   0.0353423   0.0590566
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0341161   0.0302702   0.0379621


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     4.269231   1.9172672    9.506412
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     1.969388   0.8935400    4.340587
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     2.323689   1.8968563    2.846568
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     1.950052   1.3223796    2.875653
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.960526   1.0272631    3.741655
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.210104   1.1841949    4.124794
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     2.053277   1.3374717    3.152176
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.316493   0.9385496    1.846630
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.647174   1.3220605    2.052239
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Underweight          Normal weight     3.153409   1.1694063    8.503450
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED         INDIA          Underweight          Normal weight     2.120879   0.8925630    5.039564
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     2.155633   1.4612626    3.179958
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     1.757732   1.0177360    3.035779
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Underweight          Normal weight     1.707087   0.7690289    3.789382
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     1.377674   0.6090195    3.116460
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT          BELARUS        Underweight          Normal weight     1.318676   0.9359338    1.857937
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     1.504709   1.1423911    1.981939
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Underweight          Normal weight     2.611864   2.1260644    3.208666
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Underweight          Normal weight     2.615831   1.4982386    4.567077
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.240938   1.6843541   10.678014
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Underweight          Normal weight     2.049209   1.3432794    3.126123
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Underweight          Normal weight     2.128235   1.4533265    3.116564


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0241186    0.0032585   0.0449787
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0162720   -0.0065276   0.0390716
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0363697    0.0245781   0.0481613
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0212150    0.0058995   0.0365306
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0069560   -0.0030870   0.0169991
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0060038   -0.0025021   0.0145098
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0060818    0.0020330   0.0101307
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0009413   -0.0006903   0.0025730
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0030319    0.0013482   0.0047157
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.0134426   -0.0034159   0.0303011
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.0152871   -0.0061918   0.0367661
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0153717    0.0043664   0.0263769
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0089425   -0.0028381   0.0207231
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.0049531   -0.0036567   0.0135629
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0021786   -0.0041367   0.0084939
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0008301   -0.0007404   0.0024006
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0019069    0.0004835   0.0033302
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.0281448    0.0214013   0.0348883
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0184395    0.0042732   0.0326058
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0062811   -0.0002381   0.0128003
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.0060264    0.0020006   0.0100522
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0016637    0.0004417   0.0028856


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2917203    0.0252675   0.4853356
0-24 months   ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1640760   -0.0913332   0.3597107
0-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.2488546    0.1859316   0.3069139
0-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.1350835    0.0340010   0.2255887
0-24 months   ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1135023   -0.0633224   0.2609220
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0686804   -0.0327311   0.1601336
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1288539    0.0334243   0.2148618
0-24 months   ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0108869   -0.0091717   0.0305469
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0316336    0.0139880   0.0489633
0-6 months    ki0047075b-MAL-ED         BANGLADESH     Normal weight        NA                0.2134009   -0.0806932   0.4274618
0-6 months    ki0047075b-MAL-ED         INDIA          Normal weight        NA                0.1849741   -0.1072848   0.4000936
0-6 months    ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.2414048    0.1030965   0.3583851
0-6 months    ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.0993259   -0.0391483   0.2193475
0-6 months    ki1017093b-PROVIDE        BANGLADESH     Normal weight        NA                0.1183448   -0.1080833   0.2985040
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.0328967   -0.0669351   0.1233873
0-6 months    ki1119695-PROBIT          BELARUS        Normal weight        NA                0.0097563   -0.0097312   0.0288677
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0279415    0.0069470   0.0484921
6-24 months   ki1000304b-SAS-CompFeed   INDIA          Normal weight        NA                0.2896192    0.2346857   0.3406096
6-24 months   ki1017093-NIH-Birth       BANGLADESH     Normal weight        NA                0.2122506    0.0412688   0.3527391
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH     Normal weight        NA                0.2292609   -0.0217519   0.4186077
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   Normal weight        NA                0.1276797    0.0324941   0.2135007
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       Normal weight        NA                0.0487647    0.0126634   0.0835461

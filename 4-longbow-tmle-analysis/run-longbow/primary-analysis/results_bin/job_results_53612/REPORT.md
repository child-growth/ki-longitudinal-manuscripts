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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             swasted   n_cell       n
----------  -------------------------  -----------------------------  --------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      175     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        8     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       26     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        0     209
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          0       56      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        0      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            0        5      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0      61
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          0       33      41
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            0        8      41
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          0       25      26
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            1        0      26
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          0      216     221
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          1        0     221
Birth       ki0047075b-MAL-ED          PERU                           Underweight            0        5     221
Birth       ki0047075b-MAL-ED          PERU                           Underweight            1        0     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0       97     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        0     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        3     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      107     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0        6     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      722     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1       13     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      245     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            1       12     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      453     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       30     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       84     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            1        8     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      400     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       11     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       98     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight            1        1     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      598     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       41     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       59     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        6     704
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          0    12294   13664
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          1      849   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight            0      478   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight            1       43   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     8087    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      487    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      415    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       41    9030
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0    10715   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1      219   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     6873   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1      128   17935
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      208     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          0      183     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          1        3     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          0      236     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          0      267     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            0        5     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      239     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      233     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      872    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1       30    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      314    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            1       10    1226
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      440     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       91     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            1        2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      495     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1        2     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            0      102     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            1        3     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       67     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1937    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1       12    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       33    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          0    12509   13024
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          1       10   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight            0      504   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight            1        1   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     6820    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1       61    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      365    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1        7    7253
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          0      691     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            0      145     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            1        0     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0    10169   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1      134   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     6335   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1       95   16733
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      183     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      161     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0        6     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      180     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1        0     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       44     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1        2     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      228     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      196     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1        1     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        3     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      227     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        7     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      203     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      345     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       73     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1        7     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      473     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1        5     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       96     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1        4     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      468     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       42     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0     3798    3942
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1        3    3942
24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      140    3942
24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        1    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0      314     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1       25     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0       24     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1        3     366
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      467     561
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1        0     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0       93     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1        1     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0     5084    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1      188    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     3154    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1      144    8570


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/b04fce2a-ac0d-4ee7-8b3f-44ead8a978d5/e65949af-a993-489a-82b8-b4c73da399e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b04fce2a-ac0d-4ee7-8b3f-44ead8a978d5/e65949af-a993-489a-82b8-b4c73da399e4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b04fce2a-ac0d-4ee7-8b3f-44ead8a978d5/e65949af-a993-489a-82b8-b4c73da399e4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b04fce2a-ac0d-4ee7-8b3f-44ead8a978d5/e65949af-a993-489a-82b8-b4c73da399e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0177154   0.0097296   0.0257011
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.0467868   0.0091698   0.0844038
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0621118   0.0405684   0.0836552
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.0869565   0.0293291   0.1445839
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0641628   0.0451499   0.0831756
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.0923077   0.0218889   0.1627264
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0646091   0.0318751   0.0973431
Birth       ki1119695-PROBIT          BELARUS      Underweight          NA                0.0843096   0.0357268   0.1328924
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0568913   0.0519834   0.0617991
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0860462   0.0599795   0.1121130
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.0200517   0.0169060   0.0231973
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.0182481   0.0147697   0.0217265
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0328740   0.0244688   0.0412791
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.0320563   0.0108030   0.0533096
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0088650   0.0066501   0.0110799
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0188172   0.0050083   0.0326261
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.0129396   0.0104557   0.0154235
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.0149012   0.0117921   0.0180103
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.0356850   0.0303585   0.0410116
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.0435983   0.0360982   0.0510984


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0252016   0.0126376   0.0377656
Birth       ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0667614   0.0483100   0.0852128
Birth       ki1119695-PROBIT          BELARUS      NA                   NA                0.0652810   0.0325320   0.0980301
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0584718   0.0536321   0.0633115
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0193476   0.0169081   0.0217872
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326264   0.0237765   0.0414763
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0093754   0.0071574   0.0115935
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0136855   0.0116048   0.0157663
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0387398   0.0343960   0.0430836


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     2.6410274   1.1475515   6.078181
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.4000000   0.6626408   2.957862
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.4386492   0.6346416   3.261229
Birth       ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.3049185   0.8414670   2.023623
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.5124684   1.1037776   2.072483
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.9100557   0.7207870   1.149024
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     0.9751279   0.4945298   1.922785
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     2.1226423   0.9777027   4.608365
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     1.1515973   0.8885119   1.492581
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     1.2217536   0.9712586   1.536853


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0074862   -0.0025541   0.0175265
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0039752   -0.0058966   0.0138469
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0025986   -0.0041628   0.0093600
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0006719   -0.0008904   0.0022342
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0015805    0.0002172   0.0029438
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0007040   -0.0024417   0.0010336
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                -0.0002475   -0.0058114   0.0053163
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0005104   -0.0002086   0.0012295
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0007459   -0.0006402   0.0021321
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0030547   -0.0005123   0.0066218


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.2970536   -0.0758553   0.5407063
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0601504   -0.1005832   0.1974098
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0389239   -0.0673337   0.1346030
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0102929   -0.0143211   0.0343097
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0270302    0.0035315   0.0499748
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0363887   -0.1297892   0.0492904
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                -0.0075871   -0.1943680   0.1499841
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0544445   -0.0242906   0.1271273
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0545051   -0.0526537   0.1507552
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0788528   -0.0174350   0.1660281

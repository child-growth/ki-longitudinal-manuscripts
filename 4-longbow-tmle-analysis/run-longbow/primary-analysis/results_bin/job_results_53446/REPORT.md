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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight           0      188     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight           1        6     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight             0       27     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight             1        1     222
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight           0       56      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight           1        3      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight             0        5      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight             1        0      64
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight           0       33      43
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight           1        2      43
Birth       ki0047075b-MAL-ED          INDIA                          Underweight             0        8      43
Birth       ki0047075b-MAL-ED          INDIA                          Underweight             1        0      43
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight           0       26      27
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight           1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight             0        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight             1        0      27
Birth       ki0047075b-MAL-ED          PERU                           Normal weight           0      218     226
Birth       ki0047075b-MAL-ED          PERU                           Normal weight           1        3     226
Birth       ki0047075b-MAL-ED          PERU                           Underweight             0        4     226
Birth       ki0047075b-MAL-ED          PERU                           Underweight             1        1     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           0       97     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           1        1     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             0        3     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             1        0     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           0      107     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           1        8     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             0        6     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             1        1     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight           0      768    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight           1       62    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight             0      280    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight             1       25    1135
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight           0      494     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight           1       12     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight             0       95     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight             1        7     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight           0      414     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight           1        4     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight             0       99     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight             1        0     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           0      654     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           1        9     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             0       65     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             1        1     729
Birth       ki1119695-PROBIT           BELARUS                        Normal weight           0    13195   13723
Birth       ki1119695-PROBIT           BELARUS                        Normal weight           1        5   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight             0      523   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight             1        0   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           0     8905    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           1      257    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             0      484    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             1       26    9672
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight           0    12158   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight           1     1562   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight             0     7761   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight             1      874   22355
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight           0      203     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight           1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight             0       30     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight             1        2     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight           0      199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight           1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight             0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight             1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight           0      180     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight           1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight             0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight             1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight           0      235     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight           1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight             0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight             1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight           0      259     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight           1        8     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight             0        3     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight             1        2     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           0      237     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           1        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             0        6     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           0      221     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           1       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             1        2     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight           0      822    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight           1       82    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight             0      287    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight             1       37    1228
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight           0      419     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight           1       25     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight             0       83     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight             1       10     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight           0      486     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight           1       12     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight             0      103     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight             1        2     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           0      631     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           1       17     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             0       61     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0     1930    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1       19    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0       34    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight           0    12351   13027
6 months    ki1119695-PROBIT           BELARUS                        Normal weight           1      171   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight             0      494   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight             1       11   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           0     6728    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           1      271    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             0      359    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             1       17    7375
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight           0      630     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight           1       61     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight             0      135     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight             1       10     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight           0     9641   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight           1      670   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight             0     6102   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight             1      347   16760
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight           0      163     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight           1       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight             0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight             1        8     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight           0      162     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight           1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight             0        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight             1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight           0      154     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight           1       26     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight             0       42     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight             1        4     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight           0      221     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight           1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight             0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight             1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight           0      184     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight           1       13     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight             0        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight             1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           0      202     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           1       25     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             0        5     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             1        2     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           0      137     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           1       66     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             1        4     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight           0      280     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight           1       69     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight             0       54     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight             1       26     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight           0      440     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight           1       37     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight             0       85     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight             1       15     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           0      442     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           1       29     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             0       36     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             1        7     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight           0     3801    4005
24 months   ki1119695-PROBIT           BELARUS                        Normal weight           1       62    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight             0      139    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight             1        3    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           0     1167    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           1      145    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             0       56    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             1        5    1373
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight           0      427     577
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight           1       55     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight             0       80     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight             1       15     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight           0     4400    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight           1      889    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight             0     2857    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight             1      453    8599


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/0a67044e-6e47-483e-8e28-7d0b59771d09/e84e8c0f-b2c5-4b4f-8c76-efcd65c6f484/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a67044e-6e47-483e-8e28-7d0b59771d09/e84e8c0f-b2c5-4b4f-8c76-efcd65c6f484/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a67044e-6e47-483e-8e28-7d0b59771d09/e84e8c0f-b2c5-4b4f-8c76-efcd65c6f484/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a67044e-6e47-483e-8e28-7d0b59771d09/e84e8c0f-b2c5-4b4f-8c76-efcd65c6f484/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0748451   0.0629528   0.0867374
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.0818995   0.0398111   0.1239879
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0237154   0.0104465   0.0369843
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.0686275   0.0195235   0.1177314
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0280285   0.0246466   0.0314103
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0553304   0.0345275   0.0761333
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.1136871   0.1079606   0.1194137
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.1014644   0.0944973   0.1084316
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0900122   0.0689344   0.1110900
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.1177092   0.0733060   0.1621124
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0560217   0.0345376   0.0775058
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.1131051   0.0492695   0.1769407
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0262346   0.0139197   0.0385494
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522   0.0211327   0.1579718
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0136802   0.0088968   0.0184636
6 months    ki1119695-PROBIT          BELARUS      Underweight          NA                0.0270395   0.0137626   0.0403164
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0387513   0.0342265   0.0432762
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0483287   0.0264435   0.0702140
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.0881878   0.0670270   0.1093486
6 months    ki1148112-LCNI-5          MALAWI       Underweight          NA                0.0681142   0.0269001   0.1093282
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.0648696   0.0600233   0.0697159
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.0541610   0.0484005   0.0599215
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1092896   0.0639783   0.1546010
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2758621   0.1128077   0.4389164
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.1985385   0.1566306   0.2404465
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.3683569   0.2692215   0.4674923
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0783701   0.0539077   0.1028324
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.1552224   0.0798805   0.2305644
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0615711   0.0398416   0.0833006
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.1627907   0.0523400   0.2732414
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1105183   0.0935466   0.1274900
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0819673   0.0131035   0.1508310
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.1137452   0.0853858   0.1421046
24 months   ki1148112-LCNI-5          MALAWI       Underweight          NA                0.1504517   0.0797709   0.2211326
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.1682174   0.1568685   0.1795664
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.1360201   0.1234377   0.1486025


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0766520   0.0591565   0.0941474
Birth       ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.0312500   0.0174085   0.0450915
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0292597   0.0259008   0.0326186
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1089689   0.1044172   0.1135206
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0969055   0.0737418   0.1200693
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0139710   0.0092040   0.0187379
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0390508   0.0346294   0.0434723
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.0849282   0.0660197   0.1038368
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0606802   0.0568207   0.0645397
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0901213   0.0667360   0.1135066
24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1092498   0.0927432   0.1257565
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.1213172   0.0946538   0.1479805
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1560647   0.1473093   0.1648200


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.0942531   0.7035525   1.7019194
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.8937908   1.1668052   7.1768839
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.9740774   1.3300264   2.9300032
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.8924882   0.8218835   0.9691584
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.3077027   0.9033859   1.8929743
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.0189515   1.0202145   3.9953999
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.4135206   1.3924201   8.3682526
6 months    ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.9765441   1.3260109   2.9462250
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.2471513   0.7813442   1.9906546
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     0.7723761   0.4028475   1.4808701
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.8349214   0.7374615   0.9452613
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     2.5241379   1.2261968   5.1959623
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.8553422   1.3180930   2.6115718
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.9806344   1.1118764   3.5281914
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     2.6439455   1.2305873   5.6805785
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     0.7416623   0.3157143   1.7422811
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     1.3227086   0.7764729   2.2532120
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.8085968   0.7237253   0.9034211


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0018069   -0.0077595    0.0113733
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0075346   -0.0011025    0.0161717
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0012312    0.0002015    0.0022610
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0047182   -0.0080706   -0.0013658
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0068933   -0.0037931    0.0175798
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0091552   -0.0025147    0.0208251
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0059333   -0.0007202    0.0125867
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0002908   -0.0001283    0.0007098
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0002995   -0.0007976    0.0013967
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                -0.0032596   -0.0113368    0.0048176
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0041894   -0.0069416   -0.0014373
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0227859   -0.0016183    0.0471900
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0229067    0.0015089    0.0443044
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0117513   -0.0015612    0.0250637
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0084678   -0.0012566    0.0181922
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0012685   -0.0044349    0.0018979
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0075720   -0.0055281    0.0206721
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0121528   -0.0184769   -0.0058286


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0235727   -0.1049441    0.1371415
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.2411067   -0.0633857    0.4584100
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0420796    0.0065441    0.0763440
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0432989   -0.0745254   -0.0129800
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0711346   -0.0392868    0.1698240
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.1404670   -0.0528561    0.2982925
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.1844471   -0.0343640    0.3569706
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0208127   -0.0104665    0.0511237
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0076704   -0.0208149    0.0353608
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                -0.0383803   -0.1376316    0.0522119
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0690407   -0.1153740   -0.0246321
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.1725215   -0.0253527    0.3322096
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.1034417    0.0025008    0.1941681
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.1303938   -0.0270795    0.2637230
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.1209012   -0.0241135    0.2453817
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0116108   -0.0409718    0.0169221
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0624147   -0.0512823    0.1638154
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0778701   -0.1189105   -0.0383351

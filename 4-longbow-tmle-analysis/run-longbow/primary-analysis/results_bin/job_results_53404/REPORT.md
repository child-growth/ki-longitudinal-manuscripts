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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        mbmi             stunted   n_cell       n
----------  -------------------------  -----------------------------  --------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      159     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       35     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       23     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        5     222
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          0       52      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        7      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            0        3      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            1        2      64
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          0       27      43
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          1        8      43
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            0        7      43
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            1        1      43
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          0       25      27
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          1        2      27
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            0        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            1        0      27
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          0      197     226
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          1       24     226
Birth       ki0047075b-MAL-ED          PERU                           Underweight            0        3     226
Birth       ki0047075b-MAL-ED          PERU                           Underweight            1        2     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0       89     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        9     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        3     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0       96     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       19     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0        4     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      615    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      215    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      200    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      105    1135
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      437     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1       69     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       74     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       28     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      381     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       37     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       89     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       10     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      575     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1       88     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       53     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       13     729
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          0    13168   13723
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          1       32   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight            0      522   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight            1        1   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     8283    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      879    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      432    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       78    9672
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0     9101   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1     4619   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     5903   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1     2732   22355
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      174     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       35     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        9     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      193     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        6     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          0      150     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          1       36     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          0      224     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          1       12     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          0      209     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          1       58     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            0        3     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            1        2     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      195     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       47     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        3     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      177     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       56     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      658    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      246    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      216    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      108    1228
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      335     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1      109     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       58     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       35     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      423     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       75     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       85     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       20     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      523     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1      125     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       42     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       25     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1764    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      185    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       30    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        4    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          0    11789   13027
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          1      733   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight            0      458   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight            1       47   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     5875    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1     1124    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      297    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       79    7375
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          0      446     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          1      245     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            0       83     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            1       62     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0     7574   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1     2737   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     4970   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1     1479   16760
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      101     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       82     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1       19     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      156     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        6     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      104     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1       76     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       26     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1       20     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      178     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1       50     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      125     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1       72     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      150     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       77     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        2     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        5     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0       56     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1      147     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        8     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      162     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1      187     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       57     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      330     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1      147     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       58     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       42     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      355     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1      116     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0     3535    4005
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1      328    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      128    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight            1       14    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0      861    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      451    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0       36    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       25    1373
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      272     577
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1      210     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0       49     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       46     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          0     2606    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight          1     2683    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            0     1767    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight            1     1543    8599


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/f4f061f0-90bc-4dd3-98d4-63a2ef17be09/903208d8-4fa9-4813-88a7-4fe3c3efb397/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f4f061f0-90bc-4dd3-98d4-63a2ef17be09/903208d8-4fa9-4813-88a7-4fe3c3efb397/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f4f061f0-90bc-4dd3-98d4-63a2ef17be09/903208d8-4fa9-4813-88a7-4fe3c3efb397/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f4f061f0-90bc-4dd3-98d4-63a2ef17be09/903208d8-4fa9-4813-88a7-4fe3c3efb397/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1804124    0.1261800   0.2346447
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.1785714    0.0363908   0.3207520
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.2595324    0.2227251   0.2963397
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.3460427    0.2981489   0.3939365
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.1357711    0.1058070   0.1657351
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.2596646    0.1709502   0.3483790
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0888140    0.0611795   0.1164485
Birth       ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.1130112    0.0440904   0.1819321
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.1338186    0.1076990   0.1599382
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.1840742    0.0777231   0.2904252
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0958981    0.0898665   0.1019297
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.1533170    0.1205509   0.1860831
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.3361521    0.3271370   0.3451672
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.3171588    0.3063344   0.3279831
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1674641    0.1167370   0.2181912
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2812500    0.1251470   0.4373530
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1935484    0.1366498   0.2504470
6 months    ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1632653    0.0595562   0.2669744
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.2709438    0.2412732   0.3006144
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.3386727    0.2846344   0.3927111
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.2457136    0.2056004   0.2858268
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.3904707    0.2915867   0.4893546
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.1500248    0.1185426   0.1815070
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.1793448    0.1030715   0.2556180
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.1951982    0.1643836   0.2260128
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.4079498    0.2597821   0.5561175
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0586900    0.0458502   0.0715299
6 months    ki1119695-PROBIT          BELARUS      Underweight          NA                0.0974568    0.0694085   0.1255051
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1606803    0.1520683   0.1692922
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.2205595    0.1767638   0.2643551
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.3547232    0.3189759   0.3904705
6 months    ki1148112-LCNI-5          MALAWI       Underweight          NA                0.4211358    0.3392462   0.5030254
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.2653464    0.2551537   0.2755391
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.2296890    0.2188098   0.2405683
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.4516868    0.3791969   0.5241767
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.6630111    0.4767576   0.8492646
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.4198015    0.3472654   0.4923376
24 months   ki0047075b-MAL-ED         INDIA        Underweight          NA                0.4248345    0.2797183   0.5699506
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.5352818    0.4828730   0.5876906
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.7188744    0.6183493   0.8193996
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.3094613    0.2676549   0.3512677
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.4051100    0.3035778   0.5066422
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.2452270    0.2062943   0.2841596
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.4236013    0.2657297   0.5814729
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0851057    0.0556379   0.1145735
24 months   ki1119695-PROBIT          BELARUS      Underweight          NA                0.0858664   -0.0113138   0.1830466
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.3440523    0.3183069   0.3697976
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.4163009    0.2865372   0.5460646
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.4348975    0.3903480   0.4794470
24 months   ki1148112-LCNI-5          MALAWI       Underweight          NA                0.4585987    0.3582001   0.5589972
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.5075894    0.4910461   0.5241326
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.4655059    0.4463484   0.4846634


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1801802   0.1295086   0.2308518
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2819383   0.2495848   0.3142918
Birth       ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0909091   0.0661046   0.1157136
Birth       ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.1385460   0.1134505   0.1636414
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0989454   0.0929945   0.1048964
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3288302   0.3214550   0.3362055
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1825726   0.1336978   0.2314474
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2882736   0.2624662   0.3140810
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1575456   0.1284434   0.1866478
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0598756   0.0470544   0.0726968
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1631186   0.1546857   0.1715516
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3672249   0.3345288   0.3999210
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2515513   0.2434364   0.2596662
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4247788   0.3601902   0.4893673
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3275563   0.2892291   0.3658836
24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0853933   0.0554084   0.1153781
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.3466861   0.3215035   0.3718687
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4436742   0.4031015   0.4842468
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4914525   0.4783104   0.5045946


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     0.9897959   0.4226026   2.3182439
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.3333314   1.1170784   1.5914484
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.9125180   1.2727814   2.8738048
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.2724481   0.6416243   2.5234771
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.3755501   0.7474316   2.5315202
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.5987489   1.2794544   1.9977250
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.9434978   0.9062169   0.9823124
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     1.6794643   0.8924037   3.1606777
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     0.8435374   0.4189110   1.6985838
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.2499742   1.0325271   1.5132149
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.5891293   1.1753913   2.1485031
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.1954340   0.7442123   1.9202350
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     2.0899258   1.4046058   3.1096196
6 months    ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.6605341   1.3120915   2.1015100
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.3726607   1.1174901   1.6860975
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     1.1872237   0.9536955   1.4779351
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.8656195   0.8189593   0.9149382
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     1.4678558   1.0603096   2.0320486
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     1.0119889   0.6897604   1.4847496
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.3429831   1.1321159   1.5931263
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.3090814   0.9845506   1.7405851
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.7273846   1.1519656   2.5902315
24 months   ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.0089386   0.3693370   2.7561746
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.2099932   0.8780775   1.6673741
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     1.0544982   0.8278853   1.3431408
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.9170915   0.8723668   0.9641091


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0002322   -0.0194253    0.0189609
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0224059    0.0093102    0.0355017
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0237684    0.0077411    0.0397957
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0020951   -0.0109677    0.0151579
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0047274   -0.0045649    0.0140196
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0030473    0.0013473    0.0047473
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0073219   -0.0123688   -0.0022750
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0151085   -0.0072265    0.0374435
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0063143   -0.0310298    0.0184011
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0173298    0.0017375    0.0329222
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0224428    0.0034755    0.0414102
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0075208   -0.0067844    0.0218260
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0145920    0.0023818    0.0268022
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0011856    0.0002930    0.0020782
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0024384    0.0002705    0.0046062
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0125016   -0.0029780    0.0279813
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0137951   -0.0189877   -0.0086025
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0247283   -0.0032514    0.0527080
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0049773   -0.0282094    0.0381639
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0334828    0.0113808    0.0555848
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0180950   -0.0009777    0.0371678
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0115824   -0.0014110    0.0245757
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0002876   -0.0024359    0.0030110
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0026338   -0.0030556    0.0083233
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0087767   -0.0099197    0.0274730
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0161369   -0.0254412   -0.0068325


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0012887   -0.1136825    0.0997623
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0794711    0.0294004    0.1269587
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.1489814    0.0450416    0.2416081
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0230459   -0.1316594    0.1566020
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0341213   -0.0351554    0.0987617
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0307980    0.0135410    0.0477530
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0222664   -0.0377289   -0.0070343
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0827534   -0.0467563    0.1962395
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0337243   -0.1743434    0.0900566
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0601159    0.0043609    0.1127487
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0836930    0.0105106    0.1514629
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0477373   -0.0472994    0.1341500
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0695551    0.0099210    0.1255974
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0198014    0.0042375    0.0351220
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0149486    0.0015810    0.0281372
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0340436   -0.0090604    0.0753063
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0548401   -0.0755255   -0.0345526
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0519049   -0.0090255    0.1091561
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0117173   -0.0695974    0.0868502
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0588693    0.0187438    0.0973540
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0552425   -0.0047987    0.1116961
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0451010   -0.0067316    0.0942649
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0033678   -0.0287775    0.0345086
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0075972   -0.0089523    0.0238752
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0197818   -0.0233037    0.0610532
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0328351   -0.0519101   -0.0141059

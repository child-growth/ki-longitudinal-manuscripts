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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        mbmi             wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      154     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1       29     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       20     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        6     209  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight         0       55      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        1      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           0        4      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           1        1      61  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight         0       29      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight         1        4      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           0        7      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           1        1      41  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight         0       24      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight         1        2      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           1        0      26  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Normal weight         0      211     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Normal weight         1        5     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Underweight           0        5     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Underweight           1        0     221  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0       87     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1       10     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        3     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     100  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      106     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        1     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0        6     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     113  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight         0      667     992  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight         1       68     992  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight           0      218     992  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight           1       39     992  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      348     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1      135     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       59     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       33     575  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      331     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       80     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       66     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight           1       33     510  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      486     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1      153     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       47     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1       18     704  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Normal weight         0    10426   13664  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Normal weight         1     2717   13664  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Underweight           0      386   13664  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Underweight           1      135   13664  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0     7276    9030  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1     1298    9030  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0      360    9030  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1       96    9030  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         0     9723   17935  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         1     1211   17935  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight           0     6244   17935  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight           1      757   17935  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      206     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1        3     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       27     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        5     241  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         0      198     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        1     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           0        9     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           1        0     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         0      175     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         1       11     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Underweight           0       41     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Underweight           1        8     235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight         0      232     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight         1        4     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           1        0     236  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Normal weight         0      267     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Normal weight         1        0     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Underweight           0        5     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Underweight           1        0     272  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0      235     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1        7     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        7     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     249  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      232     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        1     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0       14     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     247  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         0      801    1226  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         1      101    1226  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           0      279    1226  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           1       45    1226  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      421     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1       23     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       81     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       12     537  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      480     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       17     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       97     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           1        8     602  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      633     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1       15     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       61     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1        6     715  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0     1867    1982  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1       82    1982  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       30    1982  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        3    1982  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Normal weight         0    12421   13024  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Normal weight         1       98   13024  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Underweight           0      500   13024  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Underweight           1        5   13024  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0     6683    7253  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1      198    7253  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0      347    7253  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1       25    7253  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight         0      678     836  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight         1       13     836  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Underweight           0      144     836  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Underweight           1        1     836  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         0     9492   16733  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         1      811   16733  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight           0     5826   16733  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight           1      604   16733  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      169     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1       14     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       22     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        7     212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         0      159     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        3     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           0        6     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           1        0     168  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         0      161     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         1       19     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Underweight           0       38     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Underweight           1        8     226  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight         0      223     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight         1        5     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           1        0     228  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Normal weight         0      195     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Normal weight         1        2     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Underweight           0        2     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Underweight           1        2     201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0      226     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1        1     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        7     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     234  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      200     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        3     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0       10     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        1     214  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      316     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1       32     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       59     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       21     428  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      440     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       38     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       76     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           1       24     578  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      430     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1       41     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       39     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1        4     514  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0        6       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        0       6  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Normal weight         0     3763    3942  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Normal weight         1       38    3942  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Underweight           0      136    3942  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Underweight           1        5    3942  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0      283     366  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1       56     366  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0       19     366  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1        8     366  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         0      462     561  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         1        5     561  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Underweight           0       89     561  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Underweight           1        5     561  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         0     4147    8570  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         1     1125    8570  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight           0     2555    8570  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight           1      743    8570  wasted           


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/a1991318-8bb4-4499-ba28-ea0e8384c2a7/2d693c4d-968c-488e-a75a-d60268d44d10/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1991318-8bb4-4499-ba28-ea0e8384c2a7/2d693c4d-968c-488e-a75a-d60268d44d10/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1991318-8bb4-4499-ba28-ea0e8384c2a7/2d693c4d-968c-488e-a75a-d60268d44d10/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1991318-8bb4-4499-ba28-ea0e8384c2a7/2d693c4d-968c-488e-a75a-d60268d44d10/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1584699    0.1054338   0.2115061
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2307692    0.0684312   0.3931072
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0925170    0.0601932   0.1248408
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.1517510    0.1093176   0.1941843
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.2795031    0.2394476   0.3195586
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.3586957    0.2606051   0.4567862
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.1946472    0.1563321   0.2329624
Birth       ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.3333333    0.2403831   0.4262836
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.2394366    0.2063258   0.2725474
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.2769231    0.1680622   0.3857840
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                0.2067260    0.1415231   0.2719289
Birth       ki1119695-PROBIT          BELARUS      Underweight          NA                0.2591171    0.1683674   0.3498668
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1513879    0.1438007   0.1589751
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.2105263    0.1731056   0.2479470
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.1107554    0.1040213   0.1174896
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.1081274    0.1001953   0.1160595
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.0591398    0.0251679   0.0931117
6 months    ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1632653    0.0595562   0.2669744
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.1119734    0.0902067   0.1337401
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.1388889    0.0879530   0.1898248
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0518018    0.0311678   0.0724358
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.1290323    0.0608358   0.1972287
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0342052    0.0182126   0.0501979
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.0761905    0.0254031   0.1269779
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0231481    0.0115621   0.0347342
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522    0.0211327   0.1579718
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0078281    0.0057317   0.0099246
6 months    ki1119695-PROBIT          BELARUS      Underweight          NA                0.0099010   -0.0006297   0.0204317
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0287749    0.0248247   0.0327251
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0672043    0.0417595   0.0926491
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.0787149    0.0730021   0.0844278
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.0939347    0.0862175   0.1016518
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.0765027    0.0379011   0.1151044
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2413793    0.0852666   0.3974920
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1055556    0.0605680   0.1505431
24 months   ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1739130    0.0641361   0.2836900
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0919540    0.0615588   0.1223493
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.2625000    0.1659712   0.3590288
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0794979    0.0552262   0.1037696
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.2400000    0.1562207   0.3237793
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0099974    0.0031354   0.0168593
24 months   ki1119695-PROBIT          BELARUS      Underweight          NA                0.0354610    0.0131851   0.0577369
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1651917    0.1256068   0.2047767
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.2962963    0.1238244   0.4687682
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.0107066    0.0013641   0.0200492
24 months   ki1148112-LCNI-5          MALAWI       Underweight          NA                0.0531915    0.0077844   0.0985986
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.2133915    0.2016760   0.2251070
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.2252881    0.2089836   0.2415925


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1674641   0.1167208   0.2182074
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1078629   0.0749278   0.1407980
Birth       ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2215686   0.1854897   0.2576475
Birth       ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2428977   0.2111977   0.2745977
Birth       ki1119695-PROBIT          BELARUS      NA                   NA                0.2087237   0.1432464   0.2742009
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1543743   0.1469218   0.1618269
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1097296   0.1045905   0.1148686
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0808511   0.0459229   0.1157792
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1190865   0.0945854   0.1435876
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0415282   0.0255778   0.0574787
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0079085   0.0059160   0.0099010
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0307459   0.0267728   0.0347190
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0845634   0.0797479   0.0893790
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1194690   0.0770894   0.1618486
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0109082   0.0040825   0.0177338
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1748634   0.1358949   0.2138319
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0178253   0.0068664   0.0287842
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2179697   0.2080911   0.2278482


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     1.4562334   0.6682012    3.173619
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.6402495   1.2799564    2.101961
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.2833333   0.9424434    1.747526
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.7125000   1.2172882    2.409172
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.1565611   0.7624095    1.754482
Birth       ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.2534324   1.0150053    1.547867
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.3906415   1.1561395    1.672708
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.9762718   0.8874798    1.073947
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     2.7606679   1.1723848    6.500671
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.2403740   0.8834253    1.741548
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.4908836   1.2850818    4.828098
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     2.2274510   0.9867371    5.028227
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.8686567   1.5519898    9.643430
6 months    ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.2648010   0.4065976    3.934409
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     2.3355192   1.5612660    3.493735
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     1.1933527   1.0752107    1.324476
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     3.1551724   1.3892244    7.165950
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     1.6475972   0.7692713    3.528764
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.8546875   1.7410817    4.680562
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     3.0189474   1.8986608    4.800248
24 months   ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT          BELARUS      Underweight          Normal weight     3.5470325   1.5784515    7.970748
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.7936508   0.9557734    3.366052
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     4.9680851   1.4656789   16.839889
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     1.0557499   0.9671071    1.152518


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0089942   -0.0124975   0.0304858
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0153459    0.0073850   0.0233068
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0126708   -0.0044474   0.0297890
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0269214    0.0068320   0.0470109
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0034611   -0.0070752   0.0139974
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0019976   -0.0001488   0.0041441
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0029864    0.0010398   0.0049329
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0010259   -0.0050907   0.0030389
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0217113   -0.0016803   0.0451029
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0071131   -0.0047280   0.0189541
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0133751    0.0007902   0.0259600
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0073230   -0.0020510   0.0166970
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0062225   -0.0004333   0.0128782
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0000804   -0.0003444   0.0005052
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0019710    0.0006360   0.0033060
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0058485    0.0023244   0.0093726
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0225539   -0.0007348   0.0458425
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0139135   -0.0105003   0.0383272
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0318778    0.0119382   0.0518173
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0277685    0.0118856   0.0436515
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0009108    0.0001787   0.0016429
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0096716   -0.0038477   0.0231909
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0071187   -0.0007594   0.0149967
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0045782   -0.0028824   0.0120387


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0537080   -0.0830039   0.1731623
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.1422722    0.0607026   0.2167583
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0433673   -0.0169948   0.1001468
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.1215038    0.0271932   0.2066712
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0142492   -0.0300815   0.0566722
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0095707   -0.0007727   0.0198073
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0193451    0.0066770   0.0318517
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0093490   -0.0470575   0.0270014
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.2685342   -0.0555650   0.4931225
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0597303   -0.0395890   0.1495609
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.2052124   -0.0003810   0.3685532
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.1763380   -0.0707412   0.3664024
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.2118607   -0.0276962   0.3955766
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0101632   -0.0454865   0.0628507
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0641065    0.0204479   0.1058191
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0691611    0.0267062   0.1097641
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.2276867   -0.0260841   0.4186950
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.1164609   -0.1094308   0.2963587
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.2574279    0.0908166   0.3935071
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.2588743    0.1079388   0.3842718
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0834970   -0.0054495   0.1645749
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0553097   -0.0246139   0.1289990
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.3993576   -0.1107537   0.6752014
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0210037   -0.0137360   0.0545528

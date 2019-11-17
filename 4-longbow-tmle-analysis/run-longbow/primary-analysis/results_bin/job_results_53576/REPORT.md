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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hhwealth_quart    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       47     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        9     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       42     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        6     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       35     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1       11     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       42     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        9     201
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              0        9      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              1        1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1              0       19      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1              1        1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              0       16      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3              0       11      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3              1        0      57
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              0        8      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       12      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        1      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              0        7      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        2      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              0        7      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        2      39
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0        5      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        1      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0        2      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        1      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        0      25
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4              0       52     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4              1        1     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              0       54     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              1        1     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              0       50     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              1        1     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              0       49     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              1        2     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       16      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        1      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       23      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        3      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       22      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        2      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       24      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        4      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       23     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       26     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       29     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        1     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       33     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0     112
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       26      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        6      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       12      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       16      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1        3      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       21      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        1      86
Birth       ki1000108-IRC              INDIA                          Wealth Q4              0       63     343
Birth       ki1000108-IRC              INDIA                          Wealth Q4              1       16     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1              0       58     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1              1       32     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2              0       60     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2              1       23     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3              0       70     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3              1       21     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              0      103     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              1       29     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              0       99     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              1       30     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              0      110     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              1       26     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              0      103     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              1       32     532
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      130     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1       31     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      132     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       32     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      127     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       33     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0      120     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       36     641
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      190     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1       68     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0       98     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1       46     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      108     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1       33     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      148     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       38     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      671    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1      144    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      533    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1      114    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      442    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       64    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      801    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1      129    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     4052   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      453   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     3909   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      526   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     3977   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      499   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     4083   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      495   17994
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0      517    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1       55    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0      499    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1       61    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0      562    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1       55    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0      578    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1       67    2394
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       57     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       58     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       58     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              0       53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1              0       52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              0       52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3              0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4              0       55     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       55     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       52     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3              0       54     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        4     235
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0       58     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0       57     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0       58     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        1     236
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4              0       67     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              0       68     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              0       71     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              0       64     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       62     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       57     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       62     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       61     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       61     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       59     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        1     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       87     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        8     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       74     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1       16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       80     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1       13     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       81     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        9     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4              0       84     408
6 months    ki1000108-IRC              INDIA                          Wealth Q4              1       16     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1              0       96     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1              1        8     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2              0       91     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2              1       11     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3              0       83     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3              1       19     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              0      129     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              1        5     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              0      148     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              1        8     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              0      158     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              1        6     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              0      143     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              1        6     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0      485    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       16    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0      573    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1       32    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0      395    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       14    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0      479    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1       25    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      131     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1        9     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      128     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       13     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      135     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       13     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0      119     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       16     564
6 months    ki1114097-CONTENT          PERU                           Wealth Q4              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1              0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3              1        0     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      332     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1        7     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0      170     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1        6     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      189     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1        5     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      205     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       12     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      715    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1       29    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      520    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1       49    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      453    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       32    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      857    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1       51    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4              0      216     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4              1        1     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1              0      195     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1              1        8     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2              0      197     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2              1        2     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3              0      194     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3              1        3     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     4625   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      346   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     3216   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      369   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     3545   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      357   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     3971   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      347   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0     1155    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1       44    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0     1110    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1       89    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0     1116    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1       85    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0     1171    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1       57    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       53     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       54     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       55     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        5     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              0       52     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1              0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              0       38     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3              0       51     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3              1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4              0       54     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        5     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       45     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       50     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        8     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3              0       51     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0       59     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0       52     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0       53     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0       59     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4              0       64     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              0       41     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              0       38     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              0       54     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       49     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       62     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        1     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       63     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       27     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       61     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       59     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        2     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       93     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       84     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       88     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       84     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        7     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4              0       93     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4              1        7     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1              0       96     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1              1        9     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2              0       92     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2              1        9     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3              0       97     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3              1        6     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              0      106     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              1       16     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              0      136     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              1       19     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              0      148     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              1        9     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              0      127     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              1       18     579
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0       98     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1       26     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0       97     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       24     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      104     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       24     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0       97     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       17     487
24 months   ki1114097-CONTENT          PERU                           Wealth Q4              0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1              0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2              0       42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3              0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3              1        0     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      392    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1       13    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0      195    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1        8    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      204    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1       11    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      208    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       15    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      654    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1       31    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      447    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1       45    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      396    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       28    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      785    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1       63    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4              0      154     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4              1        1     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1              0      123     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1              1        4     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2              0      138     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2              1        2     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3              0      133     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3              1        3     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     1897    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      454    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     1535    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      461    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     1612    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      491    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     1676    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      468    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0      983    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1      204    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0      918    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1      235    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0      922    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1      247    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0      987    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1      234    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/977fd040-1b7a-4e3f-bae5-9742eb6001ae/16e9727e-a6ce-4134-8040-0797c0f63128/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/977fd040-1b7a-4e3f-bae5-9742eb6001ae/16e9727e-a6ce-4134-8040-0797c0f63128/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/977fd040-1b7a-4e3f-bae5-9742eb6001ae/16e9727e-a6ce-4134-8040-0797c0f63128/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/977fd040-1b7a-4e3f-bae5-9742eb6001ae/16e9727e-a6ce-4134-8040-0797c0f63128/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1607143   0.0642827   0.2571459
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1250000   0.0312072   0.2187928
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2391304   0.1155571   0.3627038
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1764706   0.0715836   0.2813576
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2033202   0.1201522   0.2864882
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3590656   0.2656915   0.4524396
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2929889   0.1988337   0.3871440
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2332025   0.1580503   0.3083548
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2181365   0.1463286   0.2899443
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2372653   0.1633641   0.3111664
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1961892   0.1283626   0.2640157
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2344393   0.1597218   0.3091568
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2225455   0.1833381   0.2617529
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2010675   0.1647563   0.2373786
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2014613   0.1668734   0.2360492
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1995327   0.1630626   0.2360028
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2583275   0.2062666   0.3103885
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3359342   0.2596546   0.4122138
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2293683   0.1609754   0.2977613
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2036632   0.1462815   0.2610450
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1559498   0.1420320   0.1698677
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1558172   0.1419786   0.1696557
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1553884   0.1408603   0.1699165
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1554869   0.1417974   0.1691764
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1111434   0.1057669   0.1165199
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1099769   0.1043746   0.1155792
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1090142   0.1034989   0.1145295
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1093626   0.1039587   0.1147665
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0973819   0.0818138   0.1129500
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0990939   0.0816496   0.1165382
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0947075   0.0787888   0.1106261
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1043452   0.0854321   0.1232584
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0842105   0.0282917   0.1401294
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1777778   0.0986824   0.2568731
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1397849   0.0692131   0.2103567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1000000   0.0379361   0.1620639
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1600000   0.0880583   0.2319417
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0769231   0.0256474   0.1281988
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1078431   0.0475736   0.1681127
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1862745   0.1106267   0.2619224
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0373134   0.0051967   0.0694302
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0512821   0.0166405   0.0859236
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0365854   0.0078281   0.0653426
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0402685   0.0086768   0.0718601
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0328310   0.0169857   0.0486764
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0524432   0.0346389   0.0702475
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0332932   0.0161090   0.0504775
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0498653   0.0307380   0.0689926
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0642857   0.0236228   0.1049486
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0921986   0.0444037   0.1399935
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0878378   0.0421943   0.1334814
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1185185   0.0639470   0.1730901
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0206490   0.0055029   0.0357951
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0340909   0.0072675   0.0609143
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0257732   0.0034634   0.0480830
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0552995   0.0248724   0.0857266
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0398481   0.0258721   0.0538242
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0886954   0.0656366   0.1117543
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0651326   0.0431109   0.0871543
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0551456   0.0401872   0.0701040
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0743724   0.0654743   0.0832704
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0982828   0.0875320   0.1090336
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0895035   0.0788286   0.1001783
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0820158   0.0728377   0.0911938
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0366347   0.0187188   0.0545506
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0734315   0.0548847   0.0919782
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0711130   0.0510784   0.0911476
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0474638   0.0343272   0.0606004
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.0847458   0.0135243   0.1559672
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1346154   0.0416423   0.2275884
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1379310   0.0489915   0.2268706
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1206897   0.0366665   0.2047128
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0700000   0.0199309   0.1200691
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0857143   0.0321034   0.1393251
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129642   0.1035407
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1311475   0.0711965   0.1910986
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1225806   0.0709066   0.1742547
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0573248   0.0209312   0.0937185
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1241379   0.0704212   0.1778547
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2150252   0.1426925   0.2873580
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1978751   0.1266650   0.2690853
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1928238   0.1248791   0.2607684
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1489587   0.0841763   0.2137410
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0320988   0.0149241   0.0492734
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0394089   0.0126311   0.0661866
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0511628   0.0216976   0.0806280
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0672646   0.0343737   0.1001555
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0468121   0.0312857   0.0623386
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0898929   0.0643763   0.1154096
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0668307   0.0429734   0.0906880
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0733636   0.0557785   0.0909486
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2051668   0.1862435   0.2240901
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2249178   0.2055076   0.2443281
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2290291   0.2091605   0.2488976
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2171193   0.1959628   0.2382757
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1753339   0.1481339   0.2025339
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2039659   0.1768891   0.2310427
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2084978   0.1834657   0.2335298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1908495   0.1656416   0.2160574


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1741294   0.1215730   0.2266857
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2537723   0.2221611   0.2853834
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1556246   0.1424244   0.1688248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1096477   0.1045230   0.1147723
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0994152   0.0840401   0.1147903
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0904255   0.0667359   0.1141152
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0323974   0.0209875   0.0438073
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845851   0.0797798   0.0893904
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0569712   0.0481278   0.0658146
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1868583   0.1522030   0.2215136
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449331   0.0323731   0.0574931
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2180591   0.2081778   0.2279404
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1945032   0.1812962   0.2077102


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         0.7777778   0.2975830   2.0328390
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.4879227   0.6740216   3.2846335
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.0980392   0.4718772   2.5550931
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.7660102   1.0994664   2.8366417
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4410218   0.8675941   2.3934509
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1469718   0.6939611   1.8957032
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.0876920   0.6913097   1.7113514
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8993873   0.5579557   1.4497522
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0747367   0.6797604   1.6992151
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9034893   0.7740474   1.0545775
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9052590   0.7824585   1.0473322
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.8965931   0.7649464   1.0508960
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3004196   0.9627518   1.7565183
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8878973   0.6222526   1.2669479
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7883916   0.5598851   1.1101586
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9991492   0.9567216   1.0434583
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9963999   0.9448092   1.0508078
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9970317   0.9537230   1.0423070
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.9895048   0.9610469   1.0188054
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9808426   0.9532090   1.0092773
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9839775   0.9564867   1.0122583
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.0175799   0.9183344   1.1275511
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9725363   0.8907773   1.0617993
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0715051   0.9320645   1.2318065
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1111111   0.9492417   4.6951055
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.6599462   0.7208115   3.8226658
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1875000   0.4785137   2.9469505
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.4807692   0.2151491   1.0743205
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.6740196   0.3289721   1.3809758
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1642157   0.6351858   2.1338609
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.3743590   0.4601679   4.1047250
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9804878   0.3056433   3.1453542
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0791946   0.3367539   3.4584932
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5973668   0.8853543   2.8819884
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0140771   0.5002255   2.0557778
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.5188467   0.8198629   2.8137575
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4342002   0.6330463   3.2492572
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3663664   0.6026293   3.0980190
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.8436214   0.8431221   4.0313730
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.8406931
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.8817062
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.6995283
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.2258374   1.4387284   3.4435630
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6345206   1.0045369   2.6595914
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3838947   0.8885248   2.1554429
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3214963   1.1130820   1.5689344
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2034510   1.0192113   1.4209951
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1027723   0.9389217   1.2952164
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.0044247   1.1601533   3.4630926
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.9411387   1.1038801   3.4134316
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2955982   0.7484059   2.2428668
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.5884615   0.5352452   4.7141198
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.6275862   0.5642924   4.6944398
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.4241379   0.4781876   4.2413662
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2244898   0.4734817   3.1667018
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2729844   0.4926099   3.2895994
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8321775   0.2893443   2.3934100
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9346774   0.5018862   1.7406771
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.4371019   0.1999062   0.9557387
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9465517   0.5044021   1.7762816
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9202416   0.5626124   1.5052008
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.8967495   0.5502723   1.4613852
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.6927497   0.3998270   1.2002747
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.9154814
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.4983748
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.3260315
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9202910   1.2409446   2.9715407
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4276358   0.8770663   2.3238198
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5671905   1.0411822   2.3589399
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0962681   0.9720372   1.2363763
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1163067   0.9840313   1.2663629
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0582572   0.9277501   1.2071229
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1633001   0.9444073   1.4329273
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1891469   0.9758226   1.4491061
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0884920   0.8878127   1.3345324


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0134151   -0.0695286   0.0963588
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0649014   -0.0085653   0.1383680
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0017884   -0.0606551   0.0642318
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0166172   -0.0376679   0.0044334
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0045552   -0.0456727   0.0365622
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0003253   -0.0044994   0.0038489
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0014957   -0.0034339   0.0004424
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0020333   -0.0041617   0.0082282
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0407895   -0.0107598   0.0923387
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0276471   -0.0886587   0.0333646
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0041459   -0.0246054   0.0328972
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0102596   -0.0041925   0.0247117
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0261398   -0.0111938   0.0634734
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0196493    0.0066958   0.0326028
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0102128    0.0022788   0.0181468
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0203365    0.0049922   0.0356809
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0341970   -0.0307412   0.0991351
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0057946   -0.0382574   0.0498467
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0240664   -0.0761717   0.0280390
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0281669   -0.0899767   0.0336429
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0213790    0.0070559   0.0357020
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0128923   -0.0032218   0.0290065
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0191693   -0.0046701   0.0430087


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0770408   -0.5458102   0.4489274
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2419692   -0.0866212   0.4711951
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0081317   -0.3206203   0.2550449
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0806943   -0.1875665   0.0165601
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0179501   -0.1935794   0.1318363
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0020901   -0.0292714   0.0243734
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0136413   -0.0315203   0.0039278
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0204524   -0.0433968   0.0803944
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3263158   -0.2283944   0.6305336
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2088889   -0.7673694   0.1731144
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1000000   -0.9427092   0.5830565
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2380934   -0.1780136   0.5072199
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2890756   -0.2599919   0.5988756
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3626352   -0.2100558   0.6642850
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3302547    0.0806692   0.5120812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1207395    0.0221632   0.2093783
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3569614    0.0115912   0.5816522
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2875078   -0.5164954   0.6652512
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0764516   -0.7319580   0.5075275
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2247488   -0.8191640   0.1754401
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1507393   -0.5337114   0.1366036
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2856317   -0.1247612   0.5462841
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3135153    0.0749475   0.4905573
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0591230   -0.0178143   0.1302445
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0985551   -0.0329076   0.2132860

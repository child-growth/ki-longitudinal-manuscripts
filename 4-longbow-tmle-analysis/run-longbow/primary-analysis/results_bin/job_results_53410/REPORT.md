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

agecat      studyid                    country                        hhwealth_quart    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       51     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        5     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       41     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1       11     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       39     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1       12     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       45     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        9     213
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0        9      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       17      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        4      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       16      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0        9      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        2      60
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               0        8      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       10      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        4      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               0        6      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               0        9      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        1      41
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        6      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        8      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        8      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      26
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               0       49     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               1        5     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               0       49     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               1        6     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               0       47     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               1        7     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               0       44     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               1        8     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       16      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        1      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       24      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        3      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       23      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       25      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        3      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       21     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        5     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       22     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        6     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       26     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        6     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       30     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        4     120
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       24      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        8      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       13      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       18      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       20      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        5      92
Birth       ki1000108-IRC              INDIA                          Wealth Q4               0       80     388
Birth       ki1000108-IRC              INDIA                          Wealth Q4               1       11     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               1        8     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               0       83     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               1       16     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               1       10     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      121     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       11     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      112     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       22     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      133     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        3     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      125     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       12     539
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      147     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       26     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      142     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       33     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      144     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       30     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      141     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       33     696
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      278     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       15     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      147     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       10     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      149     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       12     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      195     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       10     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      810    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       32    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      635    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       52    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      500    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       38    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      917    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       65    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3893   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1     1385   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3614   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     2158   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3714   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1987   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3830   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1853   22434
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      478    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      176    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      456    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      229    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      489    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      233    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      541    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      218    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       54     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        7     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       51     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        8     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       45     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1       16     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       46     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1       13     240
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       50     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       50     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       51     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       43     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1       17     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       47     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1       11     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       50     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       56     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       56     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       57     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       55     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        4     236
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0       53     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1       14     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0       56     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1       12     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0       57     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1       14     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0       44     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1       20     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       49     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1       13     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       48     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1       12     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       48     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1       16     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       55     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        8     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       46     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       46     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       12     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       54     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       40     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       77     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       64     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       63     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       27     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       78     407
6 months    ki1000108-IRC              INDIA                          Wealth Q4               1       21     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               0       79     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               1       26     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       67     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               1       33     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       83     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               1       20     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      106     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       29     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      130     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       26     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      145     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       19     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      127     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       22     604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      435    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       67    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      556    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       49    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      366    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       43    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      468    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       36    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      111     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       29     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      109     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       32     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      115     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       33     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      107     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       28     564
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       50     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        2     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       45     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       49     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        3     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      220     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      119     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       98     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       77     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      104     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       91     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      125     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       91     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      623    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      120    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      431    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      139    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      382    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      103    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      700    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      210    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      142     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       75     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      127     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       76     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      122     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       77     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      129     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       68     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4061   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      923   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     2538   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1048   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     2790   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1117   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3190   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1136   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      969    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      230    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      828    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      368    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      880    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      321    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      930    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      299    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1       24     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1       36     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1       26     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       51     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       26     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       35     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       50     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       36     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1       23     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       26     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       36     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1       22     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       32     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        8     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       42     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1       13     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       42     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1       17     228
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0       43     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1       22     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0       31     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1       11     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0       20     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1       18     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0       33     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1       23     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       54     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       34     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1       29     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       35     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1       28     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       46     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       47     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       48     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       26     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       68     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       21     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       70     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       26     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       69     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       32     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       59     371
24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       69     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       31     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       50     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       55     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       55     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       46     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       63     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       40     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0       59     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       62     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      117     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       38     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      116     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       41     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0       96     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       49     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0       73     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       51     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       61     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       61     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0       71     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       57     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0       64     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       50     488
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        3     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       30     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1       10     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        4     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       37     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        4     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0       93    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      309    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       33    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1      169    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0       39    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1      173    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0       30    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1      189    1035
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      371    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      317    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      139    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      350    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      136    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      287    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      276    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      569    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0       96     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       64     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0       72     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       57     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0       74     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       72     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0       78     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       61     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     1511    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      855    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0      808    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1193    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0      963    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1143    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     1106    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1044    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      824    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      369    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      610    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      546    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      669    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      504    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      741    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      484    4747


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/76cd09d6-f2df-4626-b1a1-e3f65df578a7/95c2e6e3-f155-45e7-a113-24f54746c29a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/76cd09d6-f2df-4626-b1a1-e3f65df578a7/95c2e6e3-f155-45e7-a113-24f54746c29a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/76cd09d6-f2df-4626-b1a1-e3f65df578a7/95c2e6e3-f155-45e7-a113-24f54746c29a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/76cd09d6-f2df-4626-b1a1-e3f65df578a7/95c2e6e3-f155-45e7-a113-24f54746c29a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.0892857   0.0144243   0.1641471
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.2115385   0.1002748   0.3228021
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2352941   0.1186030   0.3519852
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1666667   0.0670328   0.2663005
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.0925926   0.0151013   0.1700839
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1090909   0.0265080   0.1916738
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1296296   0.0398314   0.2194279
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1538462   0.0555522   0.2521401
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1696269   0.1351006   0.2041532
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1757924   0.1377835   0.2138013
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1853125   0.1500579   0.2205671
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1685345   0.1347513   0.2023177
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0504237   0.0255501   0.0752973
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0621452   0.0244300   0.0998604
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0767256   0.0354014   0.1180497
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0477100   0.0185695   0.0768504
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0381224   0.0251286   0.0511161
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0762127   0.0564656   0.0959598
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0693308   0.0474690   0.0911927
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0675629   0.0518502   0.0832756
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3317948   0.3239534   0.3396361
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3307678   0.3227261   0.3388095
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3269764   0.3193963   0.3345566
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3280047   0.3201952   0.3358141
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3054539   0.2838194   0.3270884
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3044719   0.2787918   0.3301520
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3031399   0.2779762   0.3283036
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3020418   0.2804042   0.3236795
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346037   0.1949045
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1355932   0.0480532   0.2231333
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2622951   0.1516770   0.3729132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.2203390   0.1143581   0.3263198
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1355932   0.0480493   0.2231372
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.2833333   0.1690703   0.3975964
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1896552   0.0885491   0.2907613
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1379310   0.0489982   0.2268639
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.2056388   0.1053214   0.3059563
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1938163   0.1052829   0.2823498
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1800823   0.0937790   0.2663857
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.3342742   0.2308140   0.4377344
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2096774   0.1081451   0.3112097
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2000000   0.0985840   0.3014160
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2500000   0.1437002   0.3562998
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1269841   0.0446012   0.2093671
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2496631   0.1457854   0.3535408
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2303799   0.1317512   0.3290086
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2469374   0.1366487   0.3572261
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2142371   0.1148349   0.3136394
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4219649   0.3205895   0.5233404
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1495853   0.0729702   0.2262005
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3211960   0.2251506   0.4172413
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2999965   0.2033743   0.3966186
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2028472   0.1236799   0.2820144
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2490081   0.1709926   0.3270236
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3357074   0.2446758   0.4267391
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1934210   0.1146760   0.2721661
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2150922   0.1455011   0.2846832
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1685636   0.1092832   0.2278441
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1164723   0.0667917   0.1661529
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1456042   0.0884398   0.2027685
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1309540   0.1010584   0.1608496
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0807046   0.0589849   0.1024242
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1045452   0.0746912   0.1343991
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0710698   0.0485339   0.0936056
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2172764   0.1515775   0.2829752
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2130568   0.1484973   0.2776163
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2320992   0.1678397   0.2963586
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1966413   0.1359278   0.2573549
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.3702783   0.3217467   0.4188099
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4126994   0.3446161   0.4807826
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4475265   0.3834751   0.5115778
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4312808   0.3717071   0.4908546
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1963043   0.1707708   0.2218378
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2349895   0.2020995   0.2678794
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1974455   0.1633290   0.2315620
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2170110   0.1915904   0.2424317
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3506910   0.2865946   0.4147873
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3730150   0.3061036   0.4399264
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3876104   0.3202536   0.4549672
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3426598   0.2767435   0.4085762
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2255160   0.2118375   0.2391944
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2686955   0.2530612   0.2843299
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2714782   0.2563789   0.2865774
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2580373   0.2445182   0.2715564
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2074466   0.1814699   0.2334233
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2916418   0.2638588   0.3194249
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2648160   0.2378666   0.2917654
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2443543   0.2183860   0.2703225
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.4393775   0.3105551   0.5681998
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.4295324   0.2294603   0.6296045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.5717735   0.4475626   0.6959844
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.4516558   0.3249677   0.5783438
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3846248   0.2578036   0.5114460
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.4838960   0.3443504   0.6234416
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.3720732   0.2467474   0.4973991
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4433134   0.3125160   0.5741108
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.2033898   0.1004546   0.3063251
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1454545   0.0520748   0.2388342
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.2363636   0.1238371   0.3488902
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.2881356   0.1723182   0.4039530
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.3428097   0.2263566   0.4592628
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.2655633   0.1321732   0.3989535
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.4774446   0.3130079   0.6418814
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.4138490   0.2809998   0.5466983
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1428571   0.0562668   0.2294475
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.3673469   0.2320820   0.5026119
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.4603175   0.3369814   0.5836535
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.4444444   0.3214842   0.5674047
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7242494   0.6127786   0.8357202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5040809   0.3138284   0.6943335
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7551533   0.6466268   0.8636799
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7907933   0.6881217   0.8934650
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7192525   0.6261465   0.8123584
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7761536   0.6908070   0.8615002
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7245861   0.6335708   0.8156014
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6505984   0.5511362   0.7500607
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3013313   0.2106194   0.3920432
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5200205   0.4254284   0.6146125
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4485228   0.3504382   0.5466073
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3752619   0.2788070   0.4717167
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.4668262   0.3807233   0.5529292
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2362612   0.1720007   0.3005217
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2886434   0.2208732   0.3564135
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3417148   0.2651969   0.4182327
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4392693   0.3551017   0.5234368
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4718126   0.3850808   0.5585445
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4673671   0.3820644   0.5526698
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4403063   0.3505174   0.5300952
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7743252   0.7335398   0.8151107
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8269068   0.7752888   0.8785247
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8099327   0.7576681   0.8621972
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8695632   0.8261000   0.9130264
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5079203   0.4725294   0.5433112
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7087738   0.6698175   0.7477300
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6687270   0.6266970   0.7107570
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6539768   0.6228973   0.6850564
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.4017615   0.3253066   0.4782165
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4416624   0.3553044   0.5280204
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4933337   0.4117729   0.5748944
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.4407135   0.3576252   0.5238018
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4106972   0.3877278   0.4336666
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5706247   0.5464632   0.5947863
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5235458   0.4996872   0.5474044
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4874468   0.4637063   0.5111874
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3216856   0.2921592   0.3512120
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4648468   0.4331614   0.4965321
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4246189   0.3923221   0.4569157
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3938556   0.3618708   0.4258405


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1737089   0.1227104   0.2247075
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1209302   0.0772464   0.1646140
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0575980   0.0416028   0.0735933
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613316   0.0528136   0.0698496
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3290987   0.3217223   0.3364751
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3035461   0.2835868   0.3235054
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1967871   0.1473064   0.2462679
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4086486   0.3769522   0.4403450
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2524352   0.2383740   0.2664965
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8115942   0.7877598   0.8354286
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4425087   0.4018409   0.4831765
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4911284   0.4780181   0.5042387
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4008848   0.3839144   0.4178552


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         2.3692305   0.8805542   6.3746820
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         2.6352938   0.9948682   6.9805963
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.8666664   0.6665867   5.2272925
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         1.1781817   0.3811695   3.6417193
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         1.3999999   0.4723963   4.1490582
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.6615383   0.5797459   4.7619308
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.6753247   0.2840672   1.6054774
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3370064   0.6547919   2.7300066
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8272727   0.3683993   1.8577130
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0363475   0.8359501   1.2847849
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0924713   0.9036999   1.3206747
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9935601   0.8189419   1.2054111
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2324612   0.5632675   2.6966948
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5216187   0.7325077   3.1608181
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9461825   0.4314658   2.0749298
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9991597   1.3061841   3.0597829
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8186401   1.1447185   2.8893146
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7722637   1.1753176   2.6723998
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.9969048   0.9839752   1.0100043
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9854781   0.9737661   0.9973309
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9885770   0.9765294   1.0007733
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9967851   0.9316137   1.0665156
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9924243   0.9302958   1.0587020
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9888296   0.9394371   1.0408189
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.1815981   0.4564566   3.0587224
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         2.2857143   1.0108353   5.1684874
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.9200969   0.8222798   4.4835977
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         2.0895833   0.9760193   4.4736393
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.3987069   0.6054776   3.2311367
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.0172414   0.4084621   2.5333562
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.9425085   0.4864161   1.8262602
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.8757215   0.4467884   1.7164462
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.6255404   0.9231536   2.8623424
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         0.9538462   0.4731222   1.9230179
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.1923077   0.6259237   2.2711997
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.6056166   0.2695338   1.3607625
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9227633   0.5182603   1.6429814
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9890827   0.5401990   1.8109709
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8581049   0.4675557   1.5748800
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3544971   0.2012589   0.6244104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7611911   0.5183474   1.1178060
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7109511   0.4754946   1.0630016
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2275649   0.7492588   2.0112084
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.6549769   1.0319929   2.6540382
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9535307   0.5426525   1.6755122
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.7836810   0.4859288   1.2638805
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.5414997   0.3171478   0.9245592
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6769385   0.4069737   1.1259839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6162819   0.4331419   0.8768569
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7983352   0.5538629   1.1507163
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5427079   0.3671398   0.8022335
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9805798   0.6449287   1.4909194
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0682211   0.7135503   1.5991815
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9050287   0.5940307   1.3788460
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1145654   0.9082865   1.3676918
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2086219   1.0014120   1.4587070
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1647478   0.9693165   1.3995815
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1970676   0.9937848   1.4419326
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0058136   0.8139113   1.2429621
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1054830   0.9338800   1.3086185
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0636571   0.8234617   1.3739150
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1052763   0.8592195   1.4217970
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9770991   0.7496742   1.2735166
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1914702   1.1018430   1.2883879
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2038091   1.1140745   1.3007715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1442084   1.0613625   1.2335210
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4058644   1.2041181   1.6414127
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2765500   1.0912268   1.4933467
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1779139   1.0030450   1.3832692
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         0.9775931   0.5665026   1.6869973
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.3013264   0.9074198   1.8662259
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.0279448   0.6886958   1.5343064
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.2580989   0.8119133   1.9494850
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9673668   0.6045220   1.5479975
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.1525866   0.7401108   1.7949420
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         0.7151515   0.3157687   1.6196719
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         1.1621212   0.5800865   2.3281452
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.4166667   0.7423068   2.7036589
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.7746669   0.4224003   1.4207109
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         1.3927395   0.8583026   2.2599528
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.2072266   0.7551148   1.9300324
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         2.5714286   1.2652226   5.2261515
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         3.2222222   1.6608995   6.2512609
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         3.1111111   1.5979048   6.0573148
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6960046   0.4632166   1.0457796
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0426703   0.8452822   1.2861519
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0918799   0.8934730   1.3343454
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0791114   0.9104030   1.2790836
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0074155   0.8416183   1.2058744
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9045480   0.7402288   1.1053436
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.7257433   1.2161887   2.4487895
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4884707   1.0269010   2.1575060
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2453464   0.8378370   1.8510615
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.5061010   0.3662986   0.6992606
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.6183101   0.4610618   0.8291891
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7319957   0.5493080   0.9754412
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0740852   0.8262208   1.3963084
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0639650   0.8191966   1.3818678
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0023609   0.7595390   1.3228120
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0679063   0.9844172   1.1584761
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0459852   0.9627018   1.1364734
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1229948   1.0450147   1.2067938
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.3954429   1.2785366   1.5230388
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3165983   1.2007236   1.4436553
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2875579   1.1853471   1.3985822
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0993148   0.8366857   1.4443812
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2279267   0.9541530   1.5802539
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.0969530   0.8389697   1.4342663
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3894050   1.2999942   1.4849654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2747733   1.1916878   1.3636515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1868765   1.1055144   1.2742265
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4450345   1.2899504   1.6187637
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3199812   1.1788076   1.4780617
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2243496   1.0903524   1.3748143


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0844232    0.0119094    0.1569370
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0283376   -0.0416392    0.0983145
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0048997   -0.0632572    0.0534577
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0056605   -0.0151683    0.0264892
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0071744   -0.0134506    0.0277994
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0232092    0.0110656    0.0353529
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0026961   -0.0054337    0.0000416
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0019078   -0.0124703    0.0086547
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0685792   -0.0060197    0.1431782
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0516408   -0.0278191    0.1311008
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0165834   -0.0684414    0.1016082
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0128903   -0.1002026    0.0744221
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0107967   -0.0978116    0.0762182
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1211519   -0.2069359   -0.0353679
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0428531   -0.0269053    0.1126115
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0561518   -0.1157431    0.0034396
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0344193   -0.0592657   -0.0095729
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0009643   -0.0566932    0.0547646
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0383703    0.0011004    0.0756403
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0149217   -0.0068942    0.0367377
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0120541   -0.0429426    0.0670508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0258677    0.0146947    0.0370408
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0449886    0.0226833    0.0672940
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0370376   -0.0714153    0.1454906
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0426880   -0.0668757    0.1522517
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0159084   -0.0735859    0.1054027
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0253495   -0.0715145    0.1222134
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2100840    0.1250543    0.2951138
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0000497   -0.0932838    0.0933832
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0022713   -0.0830179    0.0784752
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1192066    0.0386256    0.1997876
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1381065   -0.2128841   -0.0633290
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0095012   -0.0627695    0.0817719
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0372690    0.0069764    0.0675616
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1149836    0.0858005    0.1441666
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0407472   -0.0245781    0.1060725
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0804312    0.0614947    0.0993677
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0791992    0.0545512    0.1038472


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.4860038   -0.1146422    0.7629804
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.2343304   -0.6198530    0.6380845
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0422466   -0.6888711    0.3568023
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0322924   -0.0940623    0.1440543
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1245595   -0.3154321    0.4173808
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3784221    0.1536322    0.5435093
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0081923   -0.0165493    0.0000960
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0062850   -0.0417357    0.0279592
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.3740686   -0.1820668    0.6685550
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2758089   -0.2935764    0.5945715
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0746253   -0.4008552    0.3887175
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0655036   -0.6156269    0.2973019
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0451996   -0.4806415    0.2621831
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4027483   -0.7205214   -0.1436666
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1744119   -0.1641024    0.4144882
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3532882   -0.7818656   -0.0277929
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3565489   -0.6353329   -0.1252907
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0044579   -0.2981335    0.2227797
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0938957   -0.0022458    0.1808147
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0706434   -0.0382218    0.1680933
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0332302   -0.1309467    0.1735740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1029013    0.0572784    0.1463163
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1782184    0.0846723    0.2622042
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0777424   -0.1810786    0.2798454
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0998987   -0.1972267    0.3232842
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0725424   -0.4398007    0.4025717
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0688547   -0.2352064    0.2980674
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.5952381    0.2883722    0.7697783
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0000686   -0.1374634    0.1209715
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0031679   -0.1223520    0.1033598
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2834622    0.0632838    0.4518869
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.4201346   -0.6694879   -0.2080245
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0211717   -0.1538561    0.1696496
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0459207    0.0076587    0.0827074
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1845928    0.1358367    0.2305981
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0920822   -0.0683652    0.2284336
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1637682    0.1240759    0.2016618
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1975610    0.1333029    0.2570549

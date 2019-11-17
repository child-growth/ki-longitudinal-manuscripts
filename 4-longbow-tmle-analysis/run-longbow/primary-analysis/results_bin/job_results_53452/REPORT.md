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

agecat      studyid                    country                        hhwealth_quart    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       56     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       50     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        2     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       47     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        4     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       54     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        0     213
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                0       10      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                0       20      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                0       16      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                0       11      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                1        0      60
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                0        8      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       13      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        1      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                0        9      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                0        9      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        1      41
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0        6      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0        8      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0        3      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0        8      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      26
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                0       54     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                1        0     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                0       54     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                1        1     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                0       51     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                1        3     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                0       52     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       17      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        0      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       26      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        1      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       24      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        0      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       28      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       23     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        3     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       26     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        2     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       30     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        2     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       33     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1     120
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       31      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1        1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       15      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       19      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1        1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       23      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1        2      92
Birth       ki1000108-IRC              INDIA                          Wealth Q4                0       87     388
Birth       ki1000108-IRC              INDIA                          Wealth Q4                1        4     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1                0       96     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1                1        2     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2                0       92     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2                1        7     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3                0       97     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3                1        3     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      132     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      132     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1        2     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      136     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      135     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        2     539
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      165     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        8     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      169     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1        6     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      169     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        5     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      162     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1       12     696
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      291     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1        2     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      157     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1        0     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      158     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1        3     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      201     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1        4     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      835    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1        7    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      675    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       12    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      524    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       14    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      969    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       13    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     4886   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      392   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     5028   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      744   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     5011   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      690   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     5061   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      622   22434
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0      615    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       39    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0      610    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1       75    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0      668    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       54    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0      694    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       65    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       56     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        3     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       58     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                0       53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                0       53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                0       52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       59     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       56     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       54     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       57     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       58     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                0       64     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                1        3     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                0       66     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                1        2     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                0       69     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                1        2     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                0       61     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                1        3     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       61     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       56     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       63     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       63     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       59     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       59     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       58     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       57     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        3     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       79     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       89     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       83     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       76     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       14     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4                0       92     407
6 months    ki1000108-IRC              INDIA                          Wealth Q4                1        7     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1                0       95     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1                1       10     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2                0       92     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2                1        8     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3                0       99     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3                1        4     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      129     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        6     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      154     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      163     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        1     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      144     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        5     604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0      497    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0      598    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        7    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0      403    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        6    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0      503    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      138     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        2     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      130     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       11     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      144     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        4     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      131     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        4     564
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                0       51     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                1        1     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                0       51     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                1        1     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                0       50     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                1        2     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      313     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1       26     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      147     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1       28     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      165     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1       30     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      181     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1       35     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      719    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1       24    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      540    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       30    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      459    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       26    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      858    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       52    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      201     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       16     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      182     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       21     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      184     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       15     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      184     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                1       13     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     4768   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      216   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     3304   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      282   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     3638   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      269   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     4074   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      252   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1156    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       43    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     1096    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      100    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1124    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       77    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1178    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       51    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       58     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       46     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       52     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        8     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                0       53     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                0       26     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                0       38     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                0       51     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       54     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        5     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       43     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        9     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       48     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                1       10     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       52     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        6     227
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       56     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       54     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0       55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       56     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        3     228
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                0       62     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                1        3     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                0       40     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                1        2     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                0       35     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                1        3     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                0       49     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                1        7     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       60     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       41     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       52     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       58     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        5     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       41     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1       22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       43     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1       19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       38     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1       23     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       60     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       34     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       68     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1       23     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       59     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       36     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       59     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       32     371
24 months   ki1000108-IRC              INDIA                          Wealth Q4                0       95     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4                1        5     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1                0       90     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1                1       15     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2                0       91     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2                1       10     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3                0       92     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3                1       11     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      103     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1       18     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      143     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1       12     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      151     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        6     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      129     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1       16     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      114     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1       10     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      101     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       21     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      112     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1       16     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      108     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        6     488
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                1        2     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                1        1     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      230    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1      172    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0       89    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1      113    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      100    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1      112    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      110    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1      109    1035
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      568    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1      120    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      307    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1      182    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      281    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1      142    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      582    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1      263    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      142     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       18     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      110     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       19     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      123     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       23     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      130     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                1        9     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     2138    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      228    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     1586    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      415    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     1727    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      379    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     1827    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      323    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1125    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       68    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0      992    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      164    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1052    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1      121    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1126    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       99    4747


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
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/ed6c11b8-51db-4a78-b84a-d281ed8b1831/db802bf5-6c5a-4ea3-91a9-b6f6c3c5fc1f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ed6c11b8-51db-4a78-b84a-d281ed8b1831/db802bf5-6c5a-4ea3-91a9-b6f6c3c5fc1f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ed6c11b8-51db-4a78-b84a-d281ed8b1831/db802bf5-6c5a-4ea3-91a9-b6f6c3c5fc1f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ed6c11b8-51db-4a78-b84a-d281ed8b1831/db802bf5-6c5a-4ea3-91a9-b6f6c3c5fc1f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0462428   0.0149259   0.0775596
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0342857   0.0073069   0.0612645
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0287356   0.0038949   0.0535764
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0689655   0.0312878   0.1066432
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0083135   0.0021795   0.0144475
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0174672   0.0076695   0.0272650
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0260223   0.0125676   0.0394771
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0132383   0.0060886   0.0203880
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1098376   0.1045724   0.1151028
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1083393   0.1036642   0.1130144
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1103979   0.1055020   0.1152937
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1093840   0.1044875   0.1142805
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0818276   0.0665787   0.0970766
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0858673   0.0731734   0.0985613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0794466   0.0672718   0.0916214
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0827517   0.0707311   0.0947724
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0771946   0.0489082   0.1054810
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1639176   0.1104558   0.2173793
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1498209   0.0994441   0.2001977
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1623534   0.1129815   0.2117254
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0342246   0.0209465   0.0475027
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0553753   0.0360383   0.0747123
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0552927   0.0343924   0.0761930
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0548736   0.0399697   0.0697775
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0754414   0.0401606   0.1107222
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0999772   0.0585432   0.1414113
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0764868   0.0389960   0.1139776
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0654019   0.0309313   0.0998725
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0562388   0.0488320   0.0636456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0709407   0.0621456   0.0797358
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0621294   0.0544642   0.0697946
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0568030   0.0499116   0.0636945
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0411835   0.0274864   0.0548807
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0744858   0.0616643   0.0873072
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0627944   0.0483481   0.0772407
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0408688   0.0298210   0.0519166
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.0847458   0.0135243   0.1559672
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1730769   0.0700247   0.2761291
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1724138   0.0749854   0.2698422
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1034483   0.0248990   0.1819975
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3492063   0.2312130   0.4671997
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2142857   0.0619453   0.3666261
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3064516   0.1914276   0.4214757
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3770492   0.2551429   0.4989555
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3572702   0.2601054   0.4544351
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2563543   0.1653672   0.3473414
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3856313   0.2855995   0.4856631
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3477757   0.2493006   0.4462509
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1428571   0.0758436   0.2098707
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0990099   0.0406898   0.1573300
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1067961   0.0470769   0.1665153
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1487603   0.0853002   0.2122205
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0774194   0.0353094   0.1195294
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0382166   0.0082015   0.0682316
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1103448   0.0593029   0.1613867
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0806452   0.0326703   0.1286200
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1721311   0.1050772   0.2391851
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1250000   0.0676481   0.1823519
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0526316   0.0115995   0.0936637
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4511186   0.4037886   0.4984486
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5464021   0.4786382   0.6141661
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5004670   0.4344193   0.5665147
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4993666   0.4333816   0.5653515
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1986667   0.1704649   0.2268685
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3679345   0.3251623   0.4107067
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3205724   0.2770475   0.3640972
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2948994   0.2645526   0.3252461
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1125000   0.0634965   0.1615035
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1472868   0.0860778   0.2084958
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1575342   0.0983898   0.2166787
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0647482   0.0238035   0.1056929
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1211541   0.1057641   0.1365442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1851163   0.1667484   0.2034841
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1687548   0.1514997   0.1860099
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1555636   0.1386650   0.1724622
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0605897   0.0438517   0.0773277
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1362910   0.1152096   0.1573723
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1019466   0.0823217   0.1215714
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0805958   0.0636899   0.0975017


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0445402   0.0292033   0.0598771
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150869   0.0107594   0.0194144
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1091201   0.1045627   0.1136775
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0826241   0.0709364   0.0943118
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1286486   0.1070607   0.1502366
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0796569   0.0610679   0.0982459
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606439   0.0567894   0.0644985
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0561658   0.0493946   0.0629370
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4888889   0.4584204   0.5193574
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1202091   0.0935816   0.1468365
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1559782   0.1472336   0.1647228
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0952180   0.0856733   0.1047628


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.7414286   0.2625388   2.093848
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.6214080   0.2072326   1.863355
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.4913793   0.6247405   3.560218
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1010605   0.8316064   5.308347
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         3.1301115   1.2713841   7.706246
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5923771   0.6381739   3.973313
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.9863590   0.9597050   1.013753
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0051010   0.9760584   1.035008
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9958702   0.9670467   1.025553
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.0493684   0.9224614   1.193734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9709017   0.8420547   1.119464
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0112934   0.8938344   1.144188
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         2.1234335   1.3040437   3.457683
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.9408211   1.1814213   3.188352
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.1031712   1.3077573   3.382378
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6179971   0.9598940   2.727295
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6155833   0.9398310   2.777211
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6033371   0.9985568   2.574405
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3252306   0.7103359   2.472402
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0138575   0.5155248   1.993904
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.8669229   0.4297157   1.748960
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2614192   1.0639042   1.495603
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1047427   0.9292484   1.313380
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0100332   0.8476384   1.203540
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8086311   1.2496589   2.617631
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5247460   1.0255225   2.266991
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9923581   0.6472797   1.521405
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         2.0423077   0.7291499   5.720388
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         2.0344828   0.7389799   5.601127
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2206897   0.3932887   3.788777
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6136364   0.2792950   1.348214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8775660   0.5296023   1.454152
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0797317   0.6764175   1.723522
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7175362   0.4588335   1.122103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0793827   0.7413367   1.571576
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9734249   0.6572420   1.441716
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.8571428   1.0770898   7.579002
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.9801980   0.7009124   5.594400
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         2.1359223   0.7687111   5.934823
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.5204301   0.2607083   1.038891
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.2569002   0.1051006   0.627948
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7417625   0.3953547   1.391691
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         2.1344262   1.0482404   4.346117
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.5500000   0.7312408   3.285512
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.6526316   0.2447796   1.740047
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2112162   1.0313895   1.422396
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1093912   0.9391245   1.310528
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1069519   0.9364263   1.308531
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.8520190   1.5445341   2.220718
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6136190   1.3294026   1.958599
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4843926   1.2491488   1.763938
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3092162   0.7170561   2.390395
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.4003044   0.7879136   2.488664
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.5755396   0.2670505   1.240387
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.5279401   1.3101196   1.781975
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3928937   1.1850917   1.637133
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2840140   1.0868885   1.516891
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.2494082   1.6373169   3.090323
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.6825730   1.1942637   2.370542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3301900   0.9534971   1.855701


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0017025   -0.0286917    0.0252866
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0067734    0.0008091    0.0127376
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0007175   -0.0030033    0.0015683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0007965   -0.0066858    0.0082787
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0514541    0.0255535    0.0773547
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0145199    0.0022522    0.0267875
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0042155   -0.0263245    0.0347554
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0044051   -0.0018678    0.0106781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0149823    0.0032124    0.0267522
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0474128   -0.0188079    0.1136336
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0221035   -0.1205654    0.0763583
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0203430   -0.1040298    0.0633438
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0502445    0.0080079    0.0924811
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0587949   -0.1125177   -0.0050722
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0279614   -0.0155768    0.0714996
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0377703    0.0010152    0.0745254
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0904949    0.0650423    0.1159474
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0077091   -0.0343817    0.0497999
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0348241    0.0210212    0.0486270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0346283    0.0194899    0.0497668


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0382249   -0.8608391    0.4207393
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4489569   -0.0865616    0.7205419
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0065755   -0.0277211    0.0141349
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0096398   -0.0855390    0.0964734
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3999580    0.1735571    0.5643372
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2978770    0.0025053    0.5057852
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0529203   -0.4194507    0.3680936
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0726395   -0.0369738    0.1706662
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2667512    0.0200519    0.4513446
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.3587571   -0.3755545    0.7010715
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0675737   -0.4153226    0.1947323
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0603780   -0.3402917    0.1610770
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.5012195   -0.1084738    0.7755635
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.6535283   -1.3492775   -0.1638284
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2574559   -0.2665087    0.5646522
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0772574   -0.0011469    0.1495216
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3129561    0.2208607    0.3941656
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0641304   -0.3602004    0.3560862
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2232624    0.1302936    0.3062931
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3636741    0.1841954    0.5036672

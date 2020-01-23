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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hhwealth_quart    sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       56     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        0     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       50     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        2     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       47     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        4     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       54     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        0     213  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                0       10      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                1        1      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                0       20      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                1        1      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                0       16      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                1        1      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                0       11      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                1        0      60  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                0        8      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        0      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       13      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        1      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                0        9      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        0      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                0        9      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        1      41  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0        6      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0        8      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        1      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0        3      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0        8      26  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      26  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                0       54     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                1        0     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                0       54     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                1        1     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                0       51     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                1        3     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                0       52     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0     215  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       17      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        0      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       26      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        1      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       24      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        0      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       28      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0      96  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       23     120  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        3     120  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       26     120  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        2     120  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       30     120  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        2     120  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       33     120  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1     120  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       31      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1        1      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       15      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        0      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       19      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1        1      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       23      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1        2      92  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q4                0       87     388  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q4                1        4     388  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q1                0       96     388  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q1                1        2     388  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q2                0       92     388  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q2                1        7     388  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q3                0       97     388  sstunted         
Birth       ki1000108-IRC              INDIA                          Wealth Q3                1        3     388  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      132     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        0     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      132     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1        2     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      136     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        0     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      135     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        2     539  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      165     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        8     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      169     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1        6     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      169     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        5     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      162     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1       12     696  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                0        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                1        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                0        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                1        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                0        1       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                1        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                0        1       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                1        0       2  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      291     816  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1        2     816  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      157     816  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1        0     816  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      158     816  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1        3     816  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      201     816  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1        4     816  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      835    3049  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1        7    3049  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      675    3049  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       12    3049  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      524    3049  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       14    3049  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      969    3049  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       13    3049  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     4886   22434  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      392   22434  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     5028   22434  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      744   22434  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     5011   22434  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      690   22434  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     5061   22434  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      622   22434  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0      615    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       39    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0      610    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1       75    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0      668    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       54    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0      694    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       65    2820  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       59     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        2     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       56     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        3     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       59     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        2     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       58     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        1     240  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                0       53     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                0       53     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                0       52     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                0       51     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       59     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        0     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       56     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        4     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       54     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        4     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       57     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        1     235  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       59     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       58     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        1     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0       59     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       59     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                0       64     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                1        3     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                0       66     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                1        2     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                0       69     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                1        2     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                0       61     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                1        3     270  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       61     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        1     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       56     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        4     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       63     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        1     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       63     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0     249  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       59     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        4     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       59     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        4     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       58     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        3     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       57     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        3     247  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       79     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       15     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       89     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        2     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       83     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       11     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       76     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       14     369  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q4                0       92     407  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q4                1        7     407  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q1                0       95     407  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q1                1       10     407  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q2                0       92     407  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q2                1        8     407  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q3                0       99     407  sstunted         
6 months    ki1000108-IRC              INDIA                          Wealth Q3                1        4     407  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      129     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        6     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      154     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1        2     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      163     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        1     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      144     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        5     604  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0      497    2020  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5    2020  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0      598    2020  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        7    2020  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0      403    2020  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        6    2020  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0      503    2020  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1    2020  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      138     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        2     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      130     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       11     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      144     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        4     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      131     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        4     564  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                0       51     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                1        1     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                0       59     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                1        0     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                0       51     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                1        1     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                0       50     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                1        2     215  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      313     925  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1       26     925  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      147     925  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1       28     925  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      165     925  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1       30     925  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      181     925  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1       35     925  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      719    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1       24    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      540    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       30    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      459    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       26    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      858    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       52    2708  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      201     816  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       16     816  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      182     816  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       21     816  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      184     816  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       15     816  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      184     816  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                1       13     816  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     4768   16803  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      216   16803  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     3304   16803  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      282   16803  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     3638   16803  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      269   16803  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     4074   16803  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      252   16803  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1156    4825  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       43    4825  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     1096    4825  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      100    4825  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1124    4825  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       77    4825  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1178    4825  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       51    4825  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       58     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        3     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       28     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        2     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       46     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1       15     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       52     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        8     212  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                0       53     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                0       26     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                0       38     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                1        1     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                0       51     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       54     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        5     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       43     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        9     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       48     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                1       10     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       52     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        6     227  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       56     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        3     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       54     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        1     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0       55     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       56     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        3     228  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                0       62     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                1        3     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                0       40     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                1        2     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                0       35     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                1        3     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                0       49     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                1        7     201  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       60     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        3     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       41     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        8     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       52     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1       11     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       58     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        5     238  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       41     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1       22     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       22     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        6     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       43     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1       19     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       38     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1       23     214  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       60     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       34     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       68     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1       23     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       59     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       36     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       59     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       32     371  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q4                0       95     409  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q4                1        5     409  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q1                0       90     409  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q1                1       15     409  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q2                0       91     409  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q2                1       10     409  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q3                0       92     409  sstunted         
24 months   ki1000108-IRC              INDIA                          Wealth Q3                1       11     409  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      103     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1       18     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      143     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1       12     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      151     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        6     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      129     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1       16     578  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        4       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0       6  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      114     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1       10     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      101     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       21     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      112     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1       16     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      108     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        6     488  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                0       41     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                1        0     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                0       40     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                1        0     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                0       40     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                1        2     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                0       40     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                1        1     164  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      230    1035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1      172    1035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0       89    1035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1      113    1035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      100    1035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1      112    1035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      110    1035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1      109    1035  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      568    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1      120    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      307    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1      182    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      281    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1      142    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      582    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1      263    2445  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      142     574  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       18     574  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      110     574  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       19     574  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      123     574  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       23     574  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      130     574  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                1        9     574  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     2138    8623  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      228    8623  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     1586    8623  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      415    8623  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     1727    8623  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      379    8623  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     1827    8623  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      323    8623  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1125    4747  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       68    4747  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0      992    4747  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      164    4747  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1052    4747  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1      121    4747  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1126    4747  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       99    4747  sstunted         


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
![](/tmp/bb3e3fc8-9f97-4283-b423-d9a84e140ab3/1e0d011e-099b-459b-ba57-e2ebd88be44b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb3e3fc8-9f97-4283-b423-d9a84e140ab3/1e0d011e-099b-459b-ba57-e2ebd88be44b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bb3e3fc8-9f97-4283-b423-d9a84e140ab3/1e0d011e-099b-459b-ba57-e2ebd88be44b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb3e3fc8-9f97-4283-b423-d9a84e140ab3/1e0d011e-099b-459b-ba57-e2ebd88be44b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0742706   0.0663000   0.0822411
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1288981   0.1201530   0.1376433
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1210314   0.1122755   0.1297873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1094492   0.1005630   0.1183355
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0596330   0.0324402   0.0868258
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1094891   0.0850274   0.1339507
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0747922   0.0526755   0.0969089
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0856390   0.0647538   0.1065242
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0766962   0.0483534   0.1050389
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1600000   0.1056545   0.2143455
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1538462   0.1031782   0.2045141
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1620370   0.1128698   0.2112043
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0323015   0.0195865   0.0450164
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0526316   0.0342969   0.0709663
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0536082   0.0335585   0.0736580
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0571429   0.0420590   0.0722267
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0737327   0.0389404   0.1085250
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1034483   0.0615288   0.1453677
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0753769   0.0386749   0.1120788
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313005   0.1006792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0433387   0.0374264   0.0492510
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0786392   0.0691004   0.0881779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0688508   0.0602500   0.0774516
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0582524   0.0512555   0.0652494
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0358632   0.0219054   0.0498211
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0836120   0.0699330   0.0972911
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0641132   0.0491017   0.0791248
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0414972   0.0299281   0.0530662
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.0847458   0.0135243   0.1559672
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1730769   0.0700247   0.2761291
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1724138   0.0749854   0.2698422
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1034483   0.0248990   0.1819975
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3492063   0.2312130   0.4671997
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2142857   0.0619453   0.3666261
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3064516   0.1914276   0.4214757
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3770492   0.2551429   0.4989555
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3617021   0.2644369   0.4589673
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2527473   0.1633364   0.3421582
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3789474   0.2812628   0.4766320
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3516484   0.2534118   0.4498849
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
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4278607   0.3794717   0.4762497
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5594059   0.4909099   0.6279019
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5283019   0.4610719   0.5955319
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4977169   0.4314645   0.5639693
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1744186   0.1460578   0.2027794
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3721881   0.3293354   0.4150409
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3356974   0.2906859   0.3807089
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.3112426   0.2800184   0.3424668
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1125000   0.0634965   0.1615035
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1472868   0.0860778   0.2084958
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1575342   0.0983898   0.2166787
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0647482   0.0238035   0.1056929
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0963652   0.0826241   0.1101062
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2073963   0.1878687   0.2269239
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1799620   0.1622490   0.1976750
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1502326   0.1341471   0.1663180
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0569992   0.0405688   0.0734295
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1418685   0.1205376   0.1631994
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1031543   0.0833118   0.1229968
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0808163   0.0639500   0.0976827


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.7355212   1.5294172   1.969400
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.6296013   1.4346483   1.851046
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.4736558   1.2924702   1.680241
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8360472   1.1059600   3.048093
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2542084   0.7350324   2.140095
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4361001   0.8508447   2.423925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         2.0861538   1.2628777   3.446128
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         2.0059172   1.2227421   3.290722
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.1127137   1.3097221   3.408020
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6293860   0.9632513   2.756185
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6596220   0.9642640   2.856422
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7690476   1.1013026   2.841662
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.4030172   0.7532483   2.613291
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0222990   0.5189274   2.013953
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.8949873   0.4416034   1.813850
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.8145255   1.5222481   2.162921
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5886679   1.3227801   1.908001
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3441208   1.1201042   1.612940
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.3314148   1.5265256   3.560697
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7877157   1.1370721   2.810664
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1570950   0.7099353   1.885903
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         2.0423077   0.7291499   5.720388
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         2.0344828   0.7389799   5.601127
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2206897   0.3932887   3.788777
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6136364   0.2792950   1.348214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8775660   0.5296023   1.454152
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0797317   0.6764175   1.723522
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.6987718   0.4480766   1.089729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0476780   0.7218544   1.520569
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9722043   0.6597165   1.432708
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
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3074488   1.1067137   1.544593
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2347521   1.0414571   1.463923
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1632686   0.9768365   1.385282
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1338787   1.7484027   2.604342
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.9246651   1.5589250   2.376212
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7844576   1.4741107   2.160142
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3092162   0.7170561   2.390395
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.4003044   0.7879136   2.488664
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.5755396   0.2670505   1.240387
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         2.1521914   1.8226925   2.541256
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.8675005   1.5708623   2.220155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.5589922   1.2978897   1.872622
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.4889579   1.7981897   3.445082
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.8097513   1.2717486   2.575352
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4178511   1.0042568   2.001781


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0017025   -0.0286917    0.0252866
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0067734    0.0008091    0.0127376
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0348495    0.0277455    0.0419535
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0229911   -0.0000814    0.0460635
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0519525    0.0258652    0.0780398
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0164430    0.0046635    0.0282224
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0059241   -0.0242790    0.0361273
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0173052    0.0121453    0.0224652
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0203026    0.0081292    0.0324759
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0474128   -0.0188079    0.1136336
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0221035   -0.1205654    0.0763583
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0247749   -0.1083572    0.0588074
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0502445    0.0080079    0.0924811
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0587949   -0.1125177   -0.0050722
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0279614   -0.0155768    0.0714996
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0610282    0.0229372    0.0991192
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1147429    0.0887670    0.1407189
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0077091   -0.0343817    0.0497999
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0596130    0.0470751    0.0721509
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0382189    0.0233175    0.0531202


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0382249   -0.8608391    0.4207393
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4489569   -0.0865616    0.7205419
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3193686    0.2512946    0.3812532
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2782612   -0.0742659    0.5151043
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.4038323    0.1756190    0.5688694
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3373302    0.0545516    0.5355313
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0743708   -0.3937368    0.3852574
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2853583    0.1961817    0.3646415
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3614759    0.0970129    0.5484841
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.3587571   -0.3755545    0.7010715
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0675737   -0.4153226    0.1947323
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0735319   -0.3526334    0.1479799
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.5012195   -0.1084738    0.7755635
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.6535283   -1.3492775   -0.1638284
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2574559   -0.2665087    0.5646522
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1248304    0.0430578    0.1996154
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3968126    0.3019648    0.4787726
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0641304   -0.3602004    0.3560862
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3821882    0.2980957    0.4562059
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.4013827    0.2237438    0.5383706

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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hhwealth_quart    ever_swasted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       57     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        4     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       56     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        4     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       56     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        5     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       52     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        8     242  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       51     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        2     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       51     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        2     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       53     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        0     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       51     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        0     210  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       57     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        2     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       52     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        8     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       49     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        9     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       53     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        5     235  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       57     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        2     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       54     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        5     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       59     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       57     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        2     236  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       66     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        2     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       68     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       70     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        1     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       64     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1     272  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       64     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       59     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        5     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       59     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        5     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       60     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        4     257  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       62     250  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1     250  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       61     250  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        2     250  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       60     250  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2     250  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       58     250  ever_swasted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        4     250  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       86     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       10     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       66     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       25     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       60     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       35     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       69     373  ever_swasted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       22     373  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       67     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       33     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       63     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       42     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       74     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       28     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       66     410  ever_swasted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       37     410  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      164     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       11     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      161     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       13     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      171     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        5     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      162     700  ever_swasted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       13     700  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      549    2384  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       44    2384  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      675    2384  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       44    2384  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      452    2384  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       31    2384  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      551    2384  ever_swasted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       38    2384  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      136     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       34     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      123     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       51     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      124     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       48     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      126     686  ever_swasted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       44     686  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215  ever_swasted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      442    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1       34    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      229    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       15    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      242    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       16    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      257    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       28    1263  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      743    3044  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       97    3044  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      590    3044  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       91    3044  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      473    3044  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       67    3044  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      856    3044  ever_swasted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      127    3044  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0      215     817  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        2     817  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      201     817  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        3     817  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      196     817  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     817  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     817  ever_swasted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     817  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     6764   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      364   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     6016   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      470   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     6160   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      411   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     6348   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      399   26932  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1282    5427  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       68    5427  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1266    5427  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      106    5427  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1259    5427  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       85    5427  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1278    5427  ever_swasted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       83    5427  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       58     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        3     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       57     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        3     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       58     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        3     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       53     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        7     242  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       52     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        1     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       51     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        2     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       53     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        0     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       51     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        0     210  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       57     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        2     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       55     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        5     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       50     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        8     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       54     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        4     235  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       57     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        2     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       55     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        4     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       59     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       58     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        1     236  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       67     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        1     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       68     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       71     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       65     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        0     272  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       65     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        0     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       61     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        3     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       63     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        1     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       63     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        1     257  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       63     250  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        0     250  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       62     250  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1     250  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       60     250  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2     250  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       61     250  ever_swasted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        1     250  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       89     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        6     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       76     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       14     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       62     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       31     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       74     368  ever_swasted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       16     368  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       71     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       29     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       67     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       38     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       77     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       25     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       69     410  ever_swasted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       34     410  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      169     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1        6     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      162     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       12     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      173     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        3     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      167     700  ever_swasted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        8     700  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      572    2384  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       21    2384  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      694    2384  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       25    2384  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      470    2384  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       13    2384  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      570    2384  ever_swasted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2384  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      159     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       11     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      154     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       20     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      148     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       24     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      146     686  ever_swasted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       24     686  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215  ever_swasted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      340    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1       29    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      184    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       12    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      194    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1        8    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      234    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       14    1015  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      765    3043  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       75    3043  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      633    3043  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       47    3043  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      513    3043  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       27    3043  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      921    3043  ever_swasted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1       62    3043  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       73     269  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        0     269  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       68     269  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        0     269  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       64     269  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        0     269  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       64     269  ever_swasted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     269  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     6845   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      254   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     6153   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      313   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     6261   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      280   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     6465   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      264   26835  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1243    5083  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       28    5083  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1222    5083  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       32    5083  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1238    5083  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       25    5083  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1269    5083  ever_swasted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       26    5083  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       60     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        1     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       57     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        1     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       59     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        2     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       59     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        1     240  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       52     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        1     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       52     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        0     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       51     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        0     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       51     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        0     207  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       59     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        0     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       56     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        4     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       57     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        1     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       57     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        1     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       59     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       57     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        1     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       59     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       58     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        1     235  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       66     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        1     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       68     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       70     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        1     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       63     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1     270  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       62     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       62     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        2     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       60     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        4     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       61     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        3     255  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       62     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       57     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       62     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        0     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       59     245  ever_swasted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        3     245  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       91     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        5     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       78     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       13     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       91     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1        4     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       83     373  ever_swasted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1        8     373  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       94     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1        6     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       97     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1        8     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       96     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1        6     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       97     410  ever_swasted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1        6     410  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      133     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1        5     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      159     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1        1     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      163     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        2     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      147     615  ever_swasted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        5     615  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      464    2010  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       24    2010  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      588    2010  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21    2010  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      388    2010  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       19    2010  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      487    2010  ever_swasted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2010  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      123     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       25     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      112     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       34     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      126     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       29     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      117     590  ever_swasted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       24     590  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215  ever_swasted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      428    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1        5    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      222    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1        3    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      233    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1        8    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      241    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       14    1154  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      748    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       23    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      552    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       54    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      464    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       40    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      857    2809  ever_swasted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1       71    2809  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0      214     805  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        2     805  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      193     805  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        3     805  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      193     805  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     805  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     805  ever_swasted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     805  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     5009   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      116   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3529   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      163   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3897   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      136   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     4302   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      137   17289  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1305    5423  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       42    5423  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1295    5423  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       76    5423  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1283    5423  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       61    5423  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1302    5423  ever_swasted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       59    5423  ever_swasted     


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8ae64e50-f48e-4c0a-bf6c-fdcf04483a0c/1f818777-bced-4ecb-8746-f5d1048cb5ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ae64e50-f48e-4c0a-bf6c-fdcf04483a0c/1f818777-bced-4ecb-8746-f5d1048cb5ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ae64e50-f48e-4c0a-bf6c-fdcf04483a0c/1f818777-bced-4ecb-8746-f5d1048cb5ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ae64e50-f48e-4c0a-bf6c-fdcf04483a0c/1f818777-bced-4ecb-8746-f5d1048cb5ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1041667   0.0429777   0.1653557
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2747253   0.1828897   0.3665608
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3684211   0.2712906   0.4655515
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2417582   0.1536727   0.3298438
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3300000   0.2377274   0.4222726
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4000000   0.3061813   0.4938187
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2745098   0.1877990   0.3612206
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3592233   0.2664559   0.4519907
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0628571   0.0268723   0.0988420
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0747126   0.0356178   0.1138075
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0284091   0.0038466   0.0529716
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0742857   0.0354053   0.1131661
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0741990   0.0530996   0.0952984
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0611961   0.0436725   0.0787197
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0641822   0.0423213   0.0860431
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0645161   0.0446719   0.0843603
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2000000   0.1398272   0.2601728
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2931034   0.2254206   0.3607863
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2790698   0.2119881   0.3461514
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2588235   0.1929360   0.3247110
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0714286   0.0482834   0.0945737
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0614754   0.0313246   0.0916262
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0620155   0.0325741   0.0914569
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0982456   0.0636757   0.1328155
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1154762   0.0938599   0.1370925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1336270   0.1080679   0.1591861
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1240741   0.0962643   0.1518838
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1291963   0.1082249   0.1501678
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0510662   0.0451351   0.0569973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0724638   0.0654909   0.0794366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0625476   0.0556591   0.0694360
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0591374   0.0531525   0.0651223
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0503704   0.0354016   0.0653391
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0772595   0.0619238   0.0925952
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0632440   0.0498051   0.0766830
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0609846   0.0468135   0.0751557
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0631579   0.0141773   0.1121385
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1555556   0.0805755   0.2305357
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3333333   0.2373952   0.4292715
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1777778   0.0986824   0.2568731
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2900000   0.2009556   0.3790444
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3619048   0.2698760   0.4539335
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2450980   0.1615198   0.3286763
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3300971   0.2391714   0.4210228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0354132   0.0205345   0.0502918
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0347705   0.0213770   0.0481641
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0269151   0.0124794   0.0413509
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0322581   0.0179862   0.0465299
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0647059   0.0276987   0.1017131
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1149425   0.0675165   0.1623685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1395349   0.0877135   0.1913562
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1411765   0.0887955   0.1935574
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0785908   0.0511206   0.1060609
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0612245   0.0276447   0.0948042
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0396040   0.0126960   0.0665119
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0564516   0.0277136   0.0851896
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0892857   0.0699988   0.1085726
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0691176   0.0500496   0.0881857
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0500000   0.0316148   0.0683852
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0630722   0.0478732   0.0782712
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0357797   0.0308937   0.0406657
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0484071   0.0425117   0.0543024
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0428069   0.0370742   0.0485396
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0392332   0.0341002   0.0443662
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0220299   0.0127999   0.0312599
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0255183   0.0161765   0.0348602
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0197941   0.0111596   0.0284286
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0200772   0.0102923   0.0298621
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0600000   0.0133966   0.1066034
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0761905   0.0253833   0.1269977
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0588235   0.0131053   0.1045418
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129643   0.1035405
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0491803   0.0299896   0.0683710
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0344828   0.0199874   0.0489781
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0466830   0.0261829   0.0671832
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0375494   0.0209813   0.0541175
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1689189   0.1085037   0.2293341
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2328767   0.1642591   0.3014943
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1870968   0.1256494   0.2485441
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1702128   0.1081278   0.2322977
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0298314   0.0178210   0.0418418
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0891089   0.0664216   0.1117962
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0793651   0.0557620   0.1029682
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0765086   0.0594036   0.0936136
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0226341   0.0179512   0.0273171
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0441495   0.0373133   0.0509858
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0337218   0.0272971   0.0401465
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0308628   0.0257295   0.0359961
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0311804   0.0196408   0.0427200
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0554340   0.0419912   0.0688768
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0453869   0.0344124   0.0563614
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0433505   0.0312014   0.0554995


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2466488   0.2028447   0.2904529
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658557   0.0558973   0.0758141
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0736342   0.0592247   0.0880437
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254928   0.1137225   0.1372631
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610426   0.0575617   0.0645236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0630182   0.0560941   0.0699424
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1820652   0.1425842   0.2215462
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327181   0.0255755   0.0398607
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0620690   0.0472181   0.0769198
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693395   0.0603122   0.0783667
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0414012   0.0384190   0.0443833
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0218375   0.0173809   0.0262941
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412935   0.0325931   0.0499940
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319278   0.0290347   0.0348209
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0438871   0.0380629   0.0497114


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.6373626   1.3416627    5.1843741
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.5368421   1.8577566    6.7335258
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.3208791   1.1626575    4.6329035
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2121212   0.8414838    1.7460085
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8318479   0.5455506    1.2683901
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0885555   0.7439572    1.5927703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1886102   0.5472702    2.5815295
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.4519628   0.1602357    1.2748120
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.1818182   0.5440987    2.5669870
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8247566   0.5508872    1.2347782
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8650009   0.5550313    1.3480802
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8695015   0.5719365    1.3218823
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4655172   1.0029471    2.1414298
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3953488   0.9493738    2.0508238
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2941176   0.8725974    1.9192590
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.8606557   0.4781226    1.5492433
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8682171   0.4886553    1.5426025
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3754386   0.8525108    2.2191288
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1571824   0.8854652    1.5122799
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0744559   0.8023494    1.4388439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1188136   0.8732790    1.4333837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4190158   1.2226454    1.6469253
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2248324   1.0439817    1.4370121
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1580531   0.9941209    1.3490182
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5338278   1.0631012    2.2129856
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2555804   0.8697760    1.8125150
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2107231   0.8206119    1.7862894
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.4629630   0.9883186    6.1378857
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         5.2777778   2.3077985   12.0699179
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.8148148   1.1512081    6.8824939
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2479475   0.8376321    1.8592563
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8451657   0.5341434    1.3372906
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1382658   0.7535273    1.7194454
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9818531   0.5552627    1.7361792
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7600315   0.3845398    1.5021798
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9109063   0.4948749    1.6766870
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.7763845   0.8775263    3.5959517
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         2.1564482   1.0903846    4.2647969
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         2.1818182   1.1034255    4.3141385
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.7790289   0.4065347    1.4928270
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.5039263   0.2347136    1.0819218
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7182981   0.3873644    1.3319556
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.7741176   0.5453008    1.0989497
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.5600000   0.3655768    0.8578225
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.7064090   0.5111031    0.9763462
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3529199   1.1295678    1.6204360
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1964026   0.9895089    1.4465551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0965208   0.9145175    1.3147456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1583504   0.6604255    2.0316836
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.8985126   0.4899497    1.6477709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9113624   0.4738259    1.7529253
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2698413   0.4562028    3.5346053
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9803922   0.3267370    2.9417201
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.3235108    2.9136456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7011494   0.3951086    1.2442414
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9492219   0.5275201    1.7080341
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7635046   0.4236438    1.3760128
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3786301   0.8673529    2.1912891
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1076129   0.6815624    1.7999911
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0076596   0.6045848    1.6794629
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.9870857   1.8551021    4.8098056
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.6604555   1.6127752    4.3887229
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.5647020   1.6182129    4.0647904
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.9505711   1.5210338    2.5014091
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4898638   1.1210119    1.9800808
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3635507   1.0393032    1.7889588
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7778472   1.1344000    2.7862665
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4556229   0.9327758    2.2715406
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3903117   0.8678951    2.2271894


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1424821    0.0813622    0.2036020
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0114634   -0.0689913    0.0919181
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0028571   -0.0337992    0.0280849
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0083433   -0.0263122    0.0096256
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0580175    0.0041674    0.1118676
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0022056   -0.0162211    0.0206324
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0100166   -0.0086360    0.0286692
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0099764    0.0046866    0.0152662
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0126479   -0.0005719    0.0258677
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1189073    0.0667615    0.1710531
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0173171   -0.0605323    0.0951664
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0026950   -0.0154332    0.0100432
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0504545    0.0149270    0.0859819
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0165218   -0.0371734    0.0041297
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0199462   -0.0356977   -0.0041948
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0056215    0.0013024    0.0099405
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0001924   -0.0082639    0.0078791
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0034146   -0.0374543    0.0442835
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0078868   -0.0241703    0.0083967
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0209116   -0.0322096    0.0740328
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0370963    0.0248287    0.0493640
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0092937    0.0051421    0.0134452
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0127067    0.0023703    0.0230432


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.5776721    0.2686084    0.7561349
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0335714   -0.2332518    0.2426655
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0476190   -0.7136457    0.3595492
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1266904   -0.4346973    0.1151923
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2248588   -0.0134663    0.4071397
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0299539   -0.2554607    0.2504828
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0798180   -0.0813311    0.2169513
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1634335    0.0729572    0.2450796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2007018   -0.0408941    0.3862222
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.6531029    0.2762967    0.8337197
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0563492   -0.2342013    0.2784995
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0823713   -0.5503815    0.2443618
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.4381236    0.0470318    0.6687139
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.2661849   -0.6400766    0.0224700
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2876608   -0.5331048   -0.0815114
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1357805    0.0259617    0.2332176
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0088105   -0.4552273    0.3006600
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0538462   -0.8692000    0.5210747
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1909935   -0.6558845    0.1433790
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1101593   -0.2181937    0.3500077
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.5542746    0.3507122    0.6940169
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2910838    0.1500079    0.4087449
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2895323    0.0092871    0.4905039

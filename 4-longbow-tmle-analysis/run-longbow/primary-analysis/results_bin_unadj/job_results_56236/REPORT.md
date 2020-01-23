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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        hhwealth_quart    ever_stunted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       30     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       31     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       24     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       36     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       17     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       44     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       22     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       38     242  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       38     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1       15     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       39     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1       14     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       41     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1       12     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       36     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1       15     210  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       21     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       38     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       24     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       36     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       22     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1       36     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       22     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       36     235  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       41     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1       18     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       39     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1       20     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       41     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1       18     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       33     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1       26     236  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       19     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1       49     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       31     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1       37     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       20     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1       51     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       21     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1       44     272  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       32     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1       33     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       19     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       45     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       25     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       39     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       22     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       42     257  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     250  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       59     250  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       13     250  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       50     250  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     250  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       53     250  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     250  ever_stunted     
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       54     250  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     373  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       90     373  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     373  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       85     373  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     373  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       87     373  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     373  ever_stunted     
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       83     373  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       48     410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       52     410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       34     410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       71     410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       32     410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       70     410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       33     410  ever_stunted     
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       70     410  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0       87     700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       88     700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      105     700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       69     700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      112     700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       64     700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0       91     700  ever_stunted     
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       84     700  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      361    2384  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      232    2384  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      498    2384  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      221    2384  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      310    2384  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1      173    2384  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      388    2384  ever_stunted     
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      201    2384  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       65     698  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1      110     698  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       60     698  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1      115     698  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       56     698  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1      118     698  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       71     698  ever_stunted     
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1      103     698  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       36     215  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1       16     215  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       38     215  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1       21     215  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       39     215  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1       13     215  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       39     215  ever_stunted     
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1       13     215  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      130    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      355    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       47    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1      198    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       45    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1      215    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       70    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1      218    1278  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      370    3057  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      473    3057  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      195    3057  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      492    3057  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      157    3057  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      385    3057  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      236    3057  ever_stunted     
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      749    3057  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       84     817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1      133     817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       80     817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1      124     817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       72     817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1      127     817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       60     817  ever_stunted     
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1      137     817  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4308   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2849   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     2888   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3698   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3091   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     3551   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3439   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     3379   27203  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      682    5426  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      668    5426  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      498    5426  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      874    5426  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      506    5426  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      837    5426  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      583    5426  ever_stunted     
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      778    5426  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       45     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       16     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       35     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       25     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       39     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       22     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       41     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       19     242  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       43     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1       10     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       40     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1       13     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       43     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1       10     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       39     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1       12     210  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       39     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       20     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       36     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       24     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       39     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1       19     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       40     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       18     235  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       49     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1       10     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       47     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1       12     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       51     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        8     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       48     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1       11     236  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       40     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1       28     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       40     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1       28     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       37     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1       34     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       33     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1       32     272  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       43     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1       22     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       35     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       29     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       39     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       25     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       39     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       25     257  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       40     250  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       23     250  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       34     250  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       29     250  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       38     250  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       24     250  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       35     250  ever_stunted     
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     250  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       31     368  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       64     368  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       55     368  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       35     368  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       46     368  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       47     368  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       48     368  ever_stunted     
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       42     368  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       60     410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       40     410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       61     410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       44     410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       51     410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       51     410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       64     410  ever_stunted     
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       39     410  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      127     700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       48     700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      130     700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       44     700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      146     700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       30     700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      129     700  ever_stunted     
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       46     700  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      448    2384  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      145    2384  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      598    2384  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      121    2384  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      385    2384  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       98    2384  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      488    2384  ever_stunted     
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      101    2384  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      123     698  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       52     698  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      116     698  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       59     698  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      116     698  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       58     698  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      121     698  ever_stunted     
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       53     698  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    0       40     215  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    1       12     215  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    0       45     215  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    1       14     215  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    0       40     215  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    1       12     215  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    0       42     215  ever_stunted     
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    1       10     215  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      277    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      105    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      127    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       70    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      132    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       73    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      165    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       88    1037  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      689    3057  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      154    3057  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      506    3057  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      181    3057  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      398    3057  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      144    3057  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      733    3057  ever_stunted     
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      252    3057  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       50     269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1       23     269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       45     269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1       23     269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       39     269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1       25     269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       40     269  ever_stunted     
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1       24     269  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4866   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2265   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3410   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3162   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3648   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     2977   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     4003   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     2806   27137  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      908    5117  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      369    5117  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      763    5117  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      504    5117  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      802    5117  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      470    5117  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      866    5117  ever_stunted     
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      435    5117  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       30     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       15     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       22     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       11     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       17     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       22     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       22     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       19     158  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       38     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        5     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       39     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        1     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       39     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        2     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       36     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        3     163  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       21     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       18     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       24     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       12     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       22     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1       17     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       22     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       18     154  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       41     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        8     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       38     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        8     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       41     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1       10     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       33     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1       15     194  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       18     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1       21     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       31     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        9     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       20     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1       17     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       21     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1       12     149  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       31     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1       11     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       19     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       16     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       25     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       14     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       22     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       17     155  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     144  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       36     144  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       10     144  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21     144  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     144  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       29     144  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     144  ever_stunted     
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     144  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     185  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       26     185  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     185  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       50     185  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     185  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       40     185  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     185  ever_stunted     
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       41     185  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       48     236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       12     236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       34     236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       27     236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       32     236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       19     236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       33     236  ever_stunted     
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       31     236  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0       55     456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       40     456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       93     456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       25     456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      101     456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       34     456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0       70     456  ever_stunted     
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       38     456  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      276    1596  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       87    1596  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      396    1596  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      100    1596  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      244    1596  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       75    1596  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      318    1596  ever_stunted     
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      100    1596  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       46     397  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       58     397  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       38     397  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       56     397  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       43     397  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       60     397  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       46     397  ever_stunted     
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       50     397  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       36     167  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        4     167  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       38     167  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        7     167  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       39     167  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        1     167  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       39     167  ever_stunted     
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        3     167  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0       90     848  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      250     848  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       32     848  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1      128     848  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       30     848  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1      142     848  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       46     848  ever_stunted     
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1      130     848  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      309    2121  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      319    2121  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      125    2121  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      311    2121  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      129    2121  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      241    2121  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      190    2121  ever_stunted     
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      497    2121  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       83     710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1      110     710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       72     710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1      101     710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       69     710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1      102     710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       60     710  ever_stunted     
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1      113     710  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     2944   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      584   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     1466   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      536   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     1716   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      574   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     2095   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      573   10488  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      679    3644  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      299    3644  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      497    3644  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      370    3644  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      506    3644  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      367    3644  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      583    3644  ever_stunted     
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      343    3644  ever_stunted     


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/129bf608-5bab-47a4-b6c2-ee8174923bf6/ec9162ab-59ca-4314-95f6-1b94e03717c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/129bf608-5bab-47a4-b6c2-ee8174923bf6/ec9162ab-59ca-4314-95f6-1b94e03717c8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/129bf608-5bab-47a4-b6c2-ee8174923bf6/ec9162ab-59ca-4314-95f6-1b94e03717c8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/129bf608-5bab-47a4-b6c2-ee8174923bf6/ec9162ab-59ca-4314-95f6-1b94e03717c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.5081967   0.3824797   0.6339137
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.6000000   0.4757841   0.7242159
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.7213115   0.6085649   0.8340580
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.6333333   0.5111468   0.7555199
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.2830189   0.1614540   0.4045838
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2641509   0.1451728   0.3831291
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.2264151   0.1134736   0.3393565
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.2941176   0.1687671   0.4194682
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.6440678   0.5216351   0.7665005
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.6000000   0.4757764   0.7242236
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.6206897   0.4955501   0.7458292
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.6206897   0.4955501   0.7458292
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.3050847   0.1873458   0.4228237
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.3389831   0.2179401   0.4600260
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.3050847   0.1873458   0.4228237
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.4406780   0.3137271   0.5676289
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.7205882   0.6137420   0.8274345
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.5441176   0.4255227   0.6627126
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.7183099   0.6134859   0.8231338
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.6769231   0.5630257   0.7908205
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.5076923   0.3859177   0.6294669
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.7031250   0.5909728   0.8152772
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.6093750   0.4896108   0.7291392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.6562500   0.5396602   0.7728398
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.9375000   0.8890135   0.9859865
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.9340659   0.8830091   0.9851228
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9157895   0.8598717   0.9717073
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9120879   0.8538303   0.9703456
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5200000   0.4219606   0.6180394
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6761905   0.5865791   0.7658018
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6862745   0.5961170   0.7764321
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6796117   0.5893863   0.7698370
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.5028571   0.4287257   0.5769886
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3965517   0.3238150   0.4692885
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3636364   0.2925169   0.4347558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.4800000   0.4059267   0.5540733
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3912310   0.3519435   0.4305186
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.3073713   0.2736382   0.3411045
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3581781   0.3154097   0.4009464
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3412564   0.3029580   0.3795547
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6285714   0.5569315   0.7002114
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6571429   0.5867665   0.7275192
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6781609   0.6086952   0.7476266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5919540   0.5188766   0.6650315
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.3076923   0.1819543   0.4334303
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.3559322   0.2334751   0.4783893
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2500000   0.1320333   0.3679667
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2500000   0.1320333   0.3679667
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7319588   0.6925229   0.7713946
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8081633   0.7588402   0.8574864
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8269231   0.7809204   0.8729258
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7569444   0.7073873   0.8065016
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5610913   0.5275864   0.5945963
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7161572   0.6824375   0.7498769
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7103321   0.6721376   0.7485266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7604061   0.7337460   0.7870662
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.6129032   0.5480562   0.6777502
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.6078431   0.5408046   0.6748817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.6381910   0.5713869   0.7049950
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6954315   0.6311256   0.7597373
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3980718   0.3853698   0.4107738
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5614941   0.5483329   0.5746553
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5346281   0.5220995   0.5471568
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4955999   0.4825576   0.5086421
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4948148   0.4632425   0.5263871
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.6370262   0.6062836   0.6677689
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.6232316   0.5933283   0.6531348
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5716385   0.5405506   0.6027264
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.2622951   0.1516789   0.3729113
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.4166667   0.2916625   0.5416708
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.3606557   0.2399032   0.4814082
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.3166667   0.1987191   0.4346143
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1886792   0.0830936   0.2942649
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2452830   0.1291723   0.3613938
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1886792   0.0830936   0.2942649
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.2352941   0.1185991   0.3519891
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3389831   0.2179390   0.4600271
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.4000000   0.2757764   0.5242236
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.3275862   0.2065428   0.4486296
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.3103448   0.1910289   0.4296607
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1694915   0.0735536   0.2654294
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.2033898   0.1004623   0.3063174
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1355932   0.0480501   0.2231364
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1864407   0.0868522   0.2860292
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.4117647   0.2945739   0.5289555
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.4117647   0.2945739   0.5289555
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.4788732   0.3624605   0.5952860
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.4923077   0.3705462   0.6140691
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.3384615   0.2232038   0.4537193
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.4531250   0.3309288   0.5753212
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.3906250   0.2708608   0.5103892
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.3906250   0.2708608   0.5103892
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3650794   0.2459547   0.4842040
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4603175   0.3369939   0.5836410
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3870968   0.2656102   0.5085834
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4354839   0.3118189   0.5591489
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6736842   0.5792728   0.7680956
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3888889   0.2880355   0.4897423
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.5053763   0.4036245   0.6071282
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4666667   0.3634570   0.5698764
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.4000000   0.3038645   0.4961355
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4190476   0.3245577   0.5135376
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5000000   0.4028488   0.5971512
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3786408   0.2848533   0.4724282
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2742857   0.2081366   0.3404348
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2528736   0.1882438   0.3175033
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1704545   0.1148607   0.2260484
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2628571   0.1975929   0.3281214
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2445194   0.2099191   0.2791197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1682893   0.1409373   0.1956413
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2028986   0.1670260   0.2387711
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1714771   0.1410306   0.2019235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2971429   0.2293855   0.3649002
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3371429   0.2670527   0.4072331
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3333333   0.2632397   0.4034270
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3045977   0.2361646   0.3730308
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.2307692   0.1159866   0.3455518
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2372881   0.1284822   0.3460941
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2307692   0.1159866   0.3455518
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1923077   0.0849384   0.2996770
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2748691   0.2300775   0.3196608
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3553299   0.2884634   0.4221965
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.3560976   0.2905170   0.4216781
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.3478261   0.2891096   0.4065426
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1826809   0.1565925   0.2087693
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2634643   0.2305187   0.2964100
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2656827   0.2284912   0.3028741
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2558376   0.2285844   0.2830907
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3150685   0.2083053   0.4218317
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3382353   0.2255769   0.4508937
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3906250   0.2708712   0.5103788
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3750000   0.2561710   0.4938290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3176273   0.3057194   0.3295351
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4811321   0.4679687   0.4942955
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4493585   0.4365492   0.4621678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4121016   0.3997333   0.4244700
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2889585   0.2600827   0.3178343
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3977901   0.3674832   0.4280969
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3694969   0.3392504   0.3997433
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3343582   0.3043211   0.3643953
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.3333333   0.1951632   0.4715035
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.3333333   0.1719853   0.4946813
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.5641026   0.4079800   0.7202251
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.4634146   0.3102921   0.6165372
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.4615385   0.3045702   0.6185067
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3333333   0.1788416   0.4878251
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4358974   0.2797619   0.5920329
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4500000   0.2953249   0.6046751
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1632653   0.0595093   0.2670213
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1739130   0.0640958   0.2837302
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1960784   0.0868321   0.3053248
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.3125000   0.1810347   0.4439653
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.5384615   0.3814761   0.6954470
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.2250000   0.0951558   0.3548442
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.4594595   0.2983403   0.6205786
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.3636364   0.1989568   0.5283159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2619048   0.1285045   0.3953051
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.4571429   0.2915703   0.6227154
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.3589744   0.2079348   0.5100139
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.4358974   0.2797652   0.5920296
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8125000   0.6768992   0.9481008
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8928571   0.8116295   0.9740847
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.8333333   0.7276180   0.9390487
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8367347   0.7329656   0.9405037
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2000000   0.0985728   0.3014272
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4426230   0.3177131   0.5675328
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3725490   0.2395750   0.5055230
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4843750   0.3616768   0.6070732
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.4210526   0.3216608   0.5204445
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2118644   0.1380547   0.2856741
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2518519   0.1785484   0.3251553
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3518519   0.2616885   0.4420152
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2396694   0.1957417   0.2835971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2016129   0.1662938   0.2369320
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2351097   0.1885593   0.2816601
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2392344   0.1983241   0.2801448
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5576923   0.4621186   0.6532661
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5957447   0.4964125   0.6950768
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5825243   0.4871679   0.6778807
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5208333   0.4207751   0.6208916
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7352941   0.6883720   0.7822162
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8000000   0.7379839   0.8620161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8255814   0.7688379   0.8823249
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7386364   0.6736854   0.8035874
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5079618   0.4688520   0.5470716
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7133028   0.6708451   0.7557604
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6513514   0.6027832   0.6999195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7234352   0.6899795   0.7568909
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.5699482   0.5000520   0.6398444
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.5838150   0.5103109   0.6573192
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.5964912   0.5229070   0.6700754
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6531792   0.5822051   0.7241533
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1655329   0.1523891   0.1786766
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2677323   0.2474999   0.2879646
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2506550   0.2311230   0.2701870
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2147676   0.1969684   0.2325669
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3057260   0.2705631   0.3408888
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4267589   0.3888350   0.4646829
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4203895   0.3823058   0.4584731
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3704104   0.3341698   0.4066509


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2666667   0.2067138   0.3266195
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6212766   0.5591262   0.6834270
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3474576   0.2865784   0.4083369
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6654412   0.6092647   0.7216177
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6186770   0.5591785   0.6781756
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3468960   0.3277853   0.3660067
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7715180   0.7484902   0.7945458
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6866209   0.6701747   0.7030670
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6376989   0.6047193   0.6706785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4954233   0.4875870   0.5032596
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3388430   0.2790857   0.3986003
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2142857   0.1586564   0.2699151
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3446809   0.2837868   0.4055749
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1737288   0.1252880   0.2221696
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4485294   0.3893160   0.5077428
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3929961   0.3331663   0.4528260
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4120000   0.3508656   0.4731344
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1950503   0.1791413   0.2109594
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3240116   0.2955133   0.3525098
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2391233   0.2240003   0.2542464
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3531599   0.2959376   0.4103821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4130891   0.4056400   0.4205383
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7665094   0.7380190   0.7949999
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2161518   0.2067762   0.2255274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.1806452   0.8551176   1.6300952
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.4193548   1.0592693   1.9018470
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.2462366   0.9106596   1.7054732
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         0.9333333   0.5008822   1.7391536
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         0.8000000   0.4141963   1.5451610
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         1.0392157   0.5674376   1.9032389
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.9315789   0.7033190   1.2339200
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9637024   0.7304672   1.2714086
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.9637024   0.7304672   1.2714086
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.1111111   0.6567743   1.8797445
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         1.0000000   0.5793917   1.7259481
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.4444444   0.8923804   2.3380386
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.7551020   0.5801229   0.9828591
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.9968382   0.8096042   1.2273730
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         0.9394035   0.7506776   1.1755764
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3849432   1.0383226   1.8472752
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.2002841   0.8802613   1.6366526
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.2926136   0.9590398   1.7422114
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9963370   0.9241135   1.0742051
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9768421   0.9017212   1.0582212
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9728938   0.8961328   1.0562300
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3003663   1.0327161   1.6373837
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3197587   1.0488092   1.6607052
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.3069455   1.0378000   1.6458918
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.7885972   0.6232407   0.9978255
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7231405   0.5660530   0.9238219
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9545455   0.7710993   1.1816338
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7856518   0.6770577   0.9116633
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9155155   0.7832630   1.0700985
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8722630   0.7503162   1.0140296
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0454545   0.8940961   1.2224359
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0788924   0.9256084   1.2575607
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9417450   0.7960936   1.1140445
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.1567797   0.6780378   1.9735466
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         0.8125000   0.4352388   1.5167679
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.8125000   0.4352388   1.5167679
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1041104   1.0177865   1.1977558
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1297400   1.0455504   1.2207086
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0341354   0.9500670   1.1256426
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2763647   1.1829036   1.3772103
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2659830   1.1682346   1.3719102
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3552269   1.2645586   1.4523962
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.9917441   0.8511870   1.1555114
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0412589   0.8972654   1.2083606
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1346513   0.9859095   1.3058336
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4105346   1.3576993   1.4654260
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3430444   1.2954034   1.3924374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2450012   1.1972931   1.2946103
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2874033   1.1909720   1.3916426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2595249   1.1652227   1.3614590
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1552574   1.0622895   1.2563616
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.5885417   0.9467379   2.6654310
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.3750000   0.8025045   2.3559058
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.2072917   0.6877864   2.1191945
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         1.3000000   0.6246258   2.7056199
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         1.0000000   0.4532100   2.2064827
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         1.2470588   0.5903970   2.6340846
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.1800000   0.7351195   1.8941138
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9663793   0.5780793   1.6155032
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.9155172   0.5417379   1.5471907
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.2000000   0.5616094   2.5640596
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         0.8000000   0.3389962   1.8879268
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.1000000   0.5051155   2.3954916
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         1.0000000   0.6686503   1.4955500
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         1.1629779   0.7998656   1.6909309
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.1956044   0.8200377   1.7431758
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3387784   0.8670795   2.0670857
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.1541193   0.7298752   1.8249578
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1541193   0.7298752   1.8249578
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.2608696   0.8266365   1.9232058
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0603086   0.6742382   1.6674437
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1928471   0.7739723   1.8384177
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.5772569   0.4298803   0.7751589
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7501680   0.5869778   0.9587279
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.6927083   0.5331392   0.9000367
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0476190   0.7534925   1.4565583
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2500000   0.9176737   1.7026750
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9466019   0.6703147   1.3367679
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9219349   0.6487656   1.3101248
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.6214489   0.4142306   0.9323278
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9583333   0.6779416   1.3546931
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6882452   0.5548222   0.8537535
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8297851   0.6616340   1.0406711
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7012821   0.5588421   0.8800279
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1346154   0.8333680   1.5447582
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1217949   0.8226237   1.5297683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0250884   0.7442823   1.4118383
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.0282486   0.5227530   2.0225519
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         1.0000000   0.4948911   2.0206464
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.8333333   0.3945282   1.7601894
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2927242   1.0078505   1.6581188
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2955168   1.0130853   1.6566856
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2654244   1.0007772   1.6000554
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4422106   1.1928649   1.7436773
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4543538   1.1907540   1.7763071
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4004615   1.1719149   1.6735791
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0735294   0.6675140   1.7265038
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2398098   0.7850575   1.9579818
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1902174   0.7484142   1.8928254
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.5147695   1.4486196   1.5839400
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4147353   1.3531923   1.4790772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2974378   1.2397018   1.3578628
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3766339   1.2156308   1.5589608
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2787195   1.1270995   1.4507358
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1571149   1.0115527   1.3236235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0000000   0.5287320   1.8913172
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.6923077   1.0280657   2.7857222
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.3902439   0.8182289   2.3621484
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.7222222   0.4064507   1.2833166
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9444444   0.5763210   1.5477057
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.9750000   0.6011814   1.5812614
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.0652174   0.4348746   2.6092306
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         1.2009804   0.5158090   2.7962946
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.9140625   0.8932358   4.1015321
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.4178571   0.2188947   0.7976648
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.8532819   0.5408026   1.3463135
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         0.6753247   0.3940962   1.1572387
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.7454545   0.9342816   3.2609137
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3706294   0.7079466   2.6536249
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.6643357   0.8929235   3.1021843
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0989011   0.9086750   1.3289500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0256410   0.8316727   1.2648479
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0298273   0.8364943   1.2678440
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.2131148   1.2386645   3.9541594
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8627451   1.0019029   3.4632290
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         2.4218750   1.3739104   4.2691857
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.5031780   0.3303395   0.7664481
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.5981481   0.4112040   0.8700821
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8356481   0.5898095   1.1839550
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8412125   0.6528223   1.0839678
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9809750   0.7490018   1.2847926
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9981851   0.7768658   1.2825556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0682318   0.8410557   1.3567701
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0445263   0.8241291   1.3238644
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9339080   0.7219364   1.2081179
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0880000   0.9840624   1.2029156
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1227907   1.0222733   1.2331917
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0045455   0.9011229   1.1198379
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4042449   1.2740246   1.5477752
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2822842   1.1519556   1.4273577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4241922   1.3018550   1.5580257
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0243300   0.8592286   1.2211557
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0465710   0.8794765   1.2454122
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1460326   0.9728329   1.3500681
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6173963   1.4560547   1.7966158
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5142310   1.3604112   1.6854430
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2974318   1.1582763   1.4533054
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3958871   1.2095227   1.6109667
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3750532   1.1895017   1.5895490
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2115764   1.0416978   1.4091585


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1075058   -0.0002375    0.2152490
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0163522   -0.1208175    0.0881131
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0227912   -0.1292133    0.0836309
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0423729   -0.0607655    0.1455112
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0551471   -0.1492951    0.0390010
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1109847    0.0067348    0.2152347
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0125670   -0.0556692    0.0305351
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1214634    0.0373017    0.2056252
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0671429   -0.1311658   -0.0031199
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0443351   -0.0781117   -0.0105584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0103971   -0.0514916    0.0722857
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0146691   -0.1236694    0.0943313
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0395592    0.0094747    0.0696438
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1255295    0.0977099    0.1533492
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0247957   -0.0305123    0.0801037
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0973515    0.0872458    0.1074572
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0870134    0.0606066    0.1134203
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0765479   -0.0216272    0.1747230
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0256065   -0.0672143    0.1184273
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0056978   -0.0991962    0.1105918
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0042373   -0.0791207    0.0875953
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0367647   -0.0650836    0.1386130
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0545346   -0.0461841    0.1552533
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0469206   -0.0568868    0.1507281
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1628146   -0.2460432   -0.0795861
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0243902   -0.0594436    0.1082241
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0342857   -0.0907681    0.0221967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0494691   -0.0787043   -0.0202338
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0209087   -0.0381197    0.0799371
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0075134   -0.1070869    0.0920601
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0491425    0.0125320    0.0857529
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0564424    0.0333352    0.0795497
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0380914   -0.0540297    0.1302124
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0954619    0.0857043    0.1052195
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0585107    0.0337442    0.0832772
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0907173   -0.0284138    0.2098484
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0394605   -0.1746787    0.0957577
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0480749   -0.0449018    0.1410516
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.1424884   -0.2764712   -0.0085056
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1122888   -0.0060027    0.2305803
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0361486   -0.0851282    0.1574255
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1771186    0.0827980    0.2714393
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1206140   -0.2074303   -0.0337978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0128524   -0.0512483    0.0255435
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0065394   -0.0755199    0.0885988
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0312153   -0.0041102    0.0665408
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1370170    0.1047879    0.1692461
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0300518   -0.0293602    0.0894638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0506189    0.0395023    0.0617355
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0727043    0.0427786    0.1026301


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1746067   -0.0220758    0.3334407
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0613208   -0.5350647    0.2662187
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0366845   -0.2230564    0.1212877
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.1219512   -0.2311573    0.3737846
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0828729   -0.2346646    0.0502573
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1793904   -0.0094593    0.3329101
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0135870   -0.0613168    0.0319963
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1893536    0.0453406    0.3116419
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1540984   -0.3113104   -0.0157343
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1278050   -0.2295548   -0.0344754
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0162716   -0.0855258    0.1085228
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0500611   -0.4964290    0.2631604
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0512745    0.0112993    0.0896335
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1828222    0.1406470    0.2229275
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0388830   -0.0519420    0.1218662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1965016    0.1756445    0.2168310
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1495517    0.1025157    0.1941227
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.2259096   -0.1246751    0.4672098
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1194969   -0.4391209    0.4612782
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0165307   -0.3401331    0.2782717
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0243902   -0.5953455    0.4033804
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0819672   -0.1758157    0.2832345
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1387662   -0.1598667    0.3605096
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1138850   -0.1777292    0.3332935
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3187010   -0.4982213   -0.1606912
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0574713   -0.1623453    0.2357173
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1428571   -0.4039265    0.0696646
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2536220   -0.4122038   -0.1128480
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0657400   -0.1395504    0.2340473
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0336538   -0.5913044    0.3285758
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1516688    0.0309755    0.2573297
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2360390    0.1337103    0.3262803
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1078587   -0.1951078    0.3340215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2310927    0.2069895    0.2544633
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1683911    0.0936720    0.2369503
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.2139303   -0.1243728    0.4504443
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0934911   -0.4660977    0.1844180
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.2274764   -0.3607913    0.5614369
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.3598435   -0.7515813   -0.0557172
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.3000821   -0.0979892    0.5538344
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0425955   -0.1117937    0.1755455
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.4696629    0.1569609    0.6663768
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.4014599   -0.7237438   -0.1394325
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0566641   -0.2402244    0.0997283
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0115900   -0.1450962    0.1468364
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0407240   -0.0066252    0.0858460
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2124364    0.1599614    0.2616335
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0500864   -0.0543726    0.1441963
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2341822    0.1819395    0.2830887
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1921208    0.1084681    0.2679244

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
* delta_sex
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

agecat        studyid                    country                        hhwealth_quart    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       30     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       31     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       24     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       36     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       17     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       44     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       22     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       38     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       38     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1       15     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       39     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1       14     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       41     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1       12     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       36     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1       15     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       38     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       24     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       36     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       22     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1       36     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       22     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       36     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       41     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1       18     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       39     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1       20     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       41     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1       18     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       33     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1       26     236
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       19     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1       49     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       31     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1       37     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       20     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1       51     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       21     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1       44     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       32     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1       33     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       45     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       25     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       39     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       22     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       42     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       59     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       13     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       50     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       53     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       54     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       90     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       85     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       87     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       83     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       48     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       52     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       34     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       71     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       32     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       70     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       70     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0       87     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       88     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      105     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       69     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      112     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       64     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0       91     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       84     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      361    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      232    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      498    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      221    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      310    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1      173    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      388    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      201    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       65     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1      110     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       60     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1      115     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       56     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1      118     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       71     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1      103     698
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       36     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1       16     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       38     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1       21     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       39     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1       13     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       39     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1       13     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      130    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      355    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       47    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1      198    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       45    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1      215    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       70    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1      218    1278
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      370    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      473    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      195    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      492    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      157    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      385    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      236    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      749    3057
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       84     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1      133     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       80     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1      124     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       72     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1      127     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       60     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1      137     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4308   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2849   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     2888   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3698   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3091   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     3551   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3439   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     3379   27203
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      682    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      668    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      498    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      874    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      506    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      837    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      583    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      778    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       45     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       16     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       35     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       25     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       39     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       22     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       41     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       19     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       43     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1       10     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       40     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1       13     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       43     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1       10     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       39     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1       12     210
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       39     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       20     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       36     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       24     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       39     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1       19     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       40     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       18     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       49     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1       10     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       47     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1       12     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       51     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        8     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       48     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1       11     236
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       40     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1       28     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       40     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1       28     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       37     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1       34     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       33     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1       32     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       43     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1       22     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       35     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       29     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       39     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       25     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       39     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       25     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       40     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       23     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       34     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       29     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       38     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       24     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       35     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       64     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       55     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       35     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       46     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       47     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       48     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       42     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       60     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       40     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       61     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       44     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       51     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       51     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       64     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       39     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      127     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       48     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      130     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       44     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      146     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       30     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      129     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       46     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      448    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      145    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      598    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      121    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      385    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       98    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      488    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      101    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      123     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       52     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      116     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       59     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      116     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       58     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      121     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       53     698
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    0       40     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    1       12     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    0       45     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    1       14     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    0       40     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    1       12     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    0       42     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    1       10     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      277    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      105    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      127    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       70    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      132    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       73    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      165    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       88    1037
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      689    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      154    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      506    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      181    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      398    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      144    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      733    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      252    3057
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       50     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1       23     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       45     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1       23     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       39     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1       25     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       40     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1       24     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4866   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2265   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3410   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3162   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3648   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     2977   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     4003   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     2806   27137
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      908    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      369    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      763    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      504    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      802    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      470    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      866    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      435    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       30     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       15     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       22     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       11     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       17     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       22     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       22     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       19     158
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       38     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        5     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       39     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        1     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       39     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        2     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       36     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        3     163
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       21     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       18     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       24     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       12     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       22     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1       17     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       22     154
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       18     154
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       41     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        8     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       38     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        8     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       41     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1       10     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       33     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1       15     194
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       18     149
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1       21     149
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       31     149
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        9     149
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       20     149
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1       17     149
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       21     149
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1       12     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       31     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1       11     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       19     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       16     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       25     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       14     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       22     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       17     155
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       36     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       10     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       29     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     144
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       26     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       50     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       40     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       41     185
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       48     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       12     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       34     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       27     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       32     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       19     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       33     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       31     236
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0       55     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       40     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       93     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       25     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      101     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       34     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0       70     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       38     456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      276    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       87    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      396    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      100    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      244    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       75    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      318    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      100    1596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       46     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       58     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       38     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       56     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       43     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       60     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       46     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       50     397
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       36     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        4     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       38     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        7     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       39     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        1     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       39     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        3     167
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0       90     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      250     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       32     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1      128     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       30     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1      142     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       46     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1      130     848
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      309    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      319    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      125    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      311    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      129    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      241    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      190    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      497    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       83     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1      110     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       72     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1      101     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       69     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1      102     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       60     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1      113     710
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     2944   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      584   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     1466   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      536   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     1716   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      574   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     2095   10488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      573   10488
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      679    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      299    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      497    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      370    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      506    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      367    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      583    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      343    3644


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




# Results Detail

## Results Plots
![](/tmp/e7cdadb1-dead-429e-803a-a95453a957fa/9ec2bb8e-1661-47e5-8796-43daf8dbd38a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7cdadb1-dead-429e-803a-a95453a957fa/9ec2bb8e-1661-47e5-8796-43daf8dbd38a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7cdadb1-dead-429e-803a-a95453a957fa/9ec2bb8e-1661-47e5-8796-43daf8dbd38a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7cdadb1-dead-429e-803a-a95453a957fa/9ec2bb8e-1661-47e5-8796-43daf8dbd38a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.5793738   0.4612824   0.6974653
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.5234439   0.3977979   0.6490899
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.7275665   0.6230774   0.8320555
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.6927044   0.5772481   0.8081607
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.2822617   0.1636786   0.4008448
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2656142   0.1557182   0.3755102
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.2554570   0.1439336   0.3669803
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.3058793   0.1820401   0.4297185
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.6468016   0.5215009   0.7721022
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.6077728   0.4847382   0.7308074
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.6209360   0.4937449   0.7481271
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.6146934   0.4892770   0.7401097
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.3059195   0.1857684   0.4260707
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.3357070   0.2144924   0.4569215
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.2883390   0.1672488   0.4094292
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.4398457   0.3128735   0.5668179
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.6930306   0.5859040   0.8001572
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.5581829   0.4411072   0.6752586
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.6821538   0.5772508   0.7870568
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.6910283   0.5824503   0.7996063
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.4904095   0.3653728   0.6154463
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.6970919   0.5837911   0.8103928
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.6078049   0.4882501   0.7273597
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.6610242   0.5439415   0.7781068
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.9375000   0.8890135   0.9859865
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.9340659   0.8830091   0.9851228
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9157895   0.8598717   0.9717073
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9120879   0.8538303   0.9703456
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5248522   0.4297648   0.6199396
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6919623   0.6055721   0.7783524
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6841565   0.5947459   0.7735671
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6774106   0.5868660   0.7679552
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.4618560   0.3921355   0.5315765
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4022543   0.3402861   0.4642224
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3897476   0.3192334   0.4602618
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.4876075   0.4155393   0.5596756
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3861965   0.3476473   0.4247458
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.3133661   0.2800607   0.3466715
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3558425   0.3136427   0.3980422
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3401271   0.3024375   0.3778166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6478461   0.5825035   0.7131887
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6231856   0.5562254   0.6901459
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6990249   0.6351066   0.7629432
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5977072   0.5288210   0.6665935
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.3113154   0.1823603   0.4402706
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.3596098   0.2345550   0.4846645
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2466039   0.1277946   0.3654132
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2475102   0.1287557   0.3662646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7344313   0.6959385   0.7729240
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7902247   0.7422153   0.8382341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8263799   0.7811241   0.8716357
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7676815   0.7207964   0.8145666
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6079026   0.5767229   0.6390822
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7034390   0.6703344   0.7365437
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6966640   0.6604166   0.7329113
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7469681   0.7210496   0.7728867
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.6208225   0.5559666   0.6856784
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.6145783   0.5474998   0.6816568
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.6485764   0.5813104   0.7158424
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6992513   0.6347050   0.7637976
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4711416   0.4596791   0.4826040
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5216370   0.5092179   0.5340560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5152823   0.5038047   0.5267600
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4944240   0.4825680   0.5062799
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5192796   0.4900745   0.5484846
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.6279416   0.5986648   0.6572185
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.6138133   0.5850803   0.6425464
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5701575   0.5402514   0.6000635
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.2483816   0.1343025   0.3624607
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.4137777   0.2871249   0.5404306
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.3559595   0.2328115   0.4791076
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.3114935   0.1911025   0.4318845
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1884708   0.0816115   0.2953302
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2283503   0.1091005   0.3476002
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1729689   0.0637623   0.2821754
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.2378595   0.1150375   0.3606814
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3591649   0.2402770   0.4780528
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.4274989   0.3023727   0.5526251
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.3534063   0.2339877   0.4728248
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.3511227   0.2338466   0.4683988
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1694915   0.0735536   0.2654294
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.2033898   0.1004623   0.3063174
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1355932   0.0480501   0.2231364
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1864407   0.0868522   0.2860292
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.3865015   0.2777715   0.4952316
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.4477849   0.3379928   0.5575770
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.4663432   0.3568910   0.5757955
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.5140749   0.4060846   0.6220652
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.3312205   0.2101782   0.4522629
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.4489424   0.3234775   0.5744074
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.4181998   0.2984761   0.5379235
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.3869261   0.2694631   0.5043891
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3483144   0.2323755   0.4642532
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4345902   0.3216902   0.5474903
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.4036383   0.2826922   0.5245844
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4590885   0.3353148   0.5828622
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6692457   0.5717036   0.7667878
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3951483   0.2903063   0.4999904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.4929270   0.3913413   0.5945127
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4760826   0.3695227   0.5826425
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3955072   0.3050470   0.4859675
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4299215   0.3411452   0.5186978
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5005096   0.4096979   0.5913212
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3645142   0.2732308   0.4557976
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2465835   0.1889320   0.3042351
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2395578   0.1877467   0.2913689
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2022848   0.1473320   0.2572376
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2678167   0.2095121   0.3261214
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2413665   0.2080051   0.2747279
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1731219   0.1463755   0.1998683
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2003665   0.1654232   0.2353097
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1701225   0.1403004   0.1999445
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3149657   0.2564684   0.3734630
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3120406   0.2542387   0.3698425
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3549633   0.2958755   0.4140511
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3014282   0.2479094   0.3549470
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.2345854   0.1170932   0.3520777
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2373599   0.1270502   0.3476696
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2336410   0.1162571   0.3510250
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1934613   0.0839537   0.3029689
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2871756   0.2453965   0.3289548
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3349044   0.2739327   0.3958761
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.3404932   0.2849500   0.3960364
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.3573750   0.3053317   0.4094183
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2183392   0.1944179   0.2422605
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2497885   0.2205291   0.2790478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2486980   0.2166269   0.2807691
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2464159   0.2221684   0.2706634
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3125223   0.2061089   0.4189356
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3233564   0.2065595   0.4401533
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3822815   0.2619161   0.5026469
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3742106   0.2546306   0.4937907
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3856361   0.3752754   0.3959967
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4431013   0.4311507   0.4550520
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4295869   0.4186329   0.4405408
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4123455   0.4019861   0.4227049
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3155646   0.2911284   0.3400008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3796535   0.3525920   0.4067150
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3608836   0.3361364   0.3856307
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3326396   0.3069379   0.3583413
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.3425129   0.1954585   0.4895673
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.2671606   0.0897145   0.4446068
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.5578456   0.3995865   0.7161047
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.4890389   0.3375928   0.6404850
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.4632148   0.3051020   0.6213276
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3293946   0.1688631   0.4899261
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4267470   0.2647613   0.5887328
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4378587   0.2787790   0.5969384
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1632653   0.0595093   0.2670213
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1739130   0.0640958   0.2837302
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1960784   0.0868321   0.3053248
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.3125000   0.1810347   0.4439653
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.5384615   0.3814761   0.6954470
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.2250000   0.0951558   0.3548442
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.4594595   0.2983403   0.6205786
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.3636364   0.1989568   0.5283159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2924902   0.1613797   0.4236006
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.4496801   0.2817782   0.6175819
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.4022536   0.2454598   0.5590474
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.4737911   0.3208517   0.6267304
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8125000   0.6768992   0.9481008
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8928571   0.8116295   0.9740847
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.8333333   0.7276180   0.9390487
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8367347   0.7329656   0.9405037
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1992591   0.0948415   0.3036767
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4538698   0.3270717   0.5806679
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3654930   0.2267860   0.5041999
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4737778   0.3488709   0.5986848
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3954689   0.2971263   0.4938115
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2139955   0.1425711   0.2854200
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2501947   0.1754499   0.3249396
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3576852   0.2666574   0.4487130
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2395513   0.1954168   0.2836857
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2018985   0.1666187   0.2371784
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2331433   0.1864771   0.2798095
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2371233   0.1961755   0.2780711
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5655275   0.4708484   0.6602065
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5655918   0.4659038   0.6652798
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5859003   0.4921161   0.6796846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5332584   0.4330369   0.6334800
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7330249   0.6866141   0.7794357
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7886658   0.7268325   0.8504992
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8294450   0.7726142   0.8862759
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7498788   0.6864569   0.8133007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5437926   0.5061489   0.5814364
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7052821   0.6634002   0.7471639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6418391   0.5944332   0.6892451
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7102459   0.6772003   0.7432914
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.5685671   0.4985736   0.6385607
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.5820818   0.5084281   0.6557356
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.5921800   0.5181201   0.6662399
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6495207   0.5784073   0.7206342
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1866757   0.1722935   0.2010579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2405630   0.2201091   0.2610169
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2466788   0.2263162   0.2670415
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2125678   0.1945163   0.2306193
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3128881   0.2777095   0.3480667
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4200827   0.3830932   0.4570721
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4175584   0.3795918   0.4555251
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3691056   0.3329759   0.4052352


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         0.9034649   0.6623422   1.2323672
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.2557807   0.9864414   1.5986607
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.1956087   0.9248725   1.5455971
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         0.9410211   0.5278191   1.6776975
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         0.9050359   0.4992608   1.6406056
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         1.0836729   0.6116007   1.9201204
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.9396588   0.7107786   1.2422416
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9600100   0.7240210   1.2729179
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.9503585   0.7174118   1.2589441
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.0973700   0.6430483   1.8726757
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         0.9425322   0.5305305   1.6744878
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.4377822   0.8825935   2.3422084
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.8054232   0.6220775   1.0428067
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.9843055   0.7938780   1.2204109
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         0.9971108   0.8026168   1.2387356
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.4214485   1.0514686   1.9216132
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.2393823   0.8984144   1.7097550
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.3479023   0.9884707   1.8380318
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9963370   0.9241135   1.0742051
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9768421   0.9017212   1.0582212
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9728938   0.8961328   1.0562300
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3183946   1.0608459   1.6384703
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3035223   1.0446127   1.6266032
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2906693   1.0318325   1.6144359
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.8709517   0.7085703   1.0705458
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8438726   0.6699629   1.0629259
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0557565   0.8589429   1.2976671
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8114161   0.7021421   0.9376964
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9214025   0.7897906   1.0749464
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8807098   0.7594611   1.0213158
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9619348   0.8333773   1.1103237
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0789985   0.9455149   1.2313266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9226069   0.7944561   1.0714292
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.1551298   0.6718706   1.9859849
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         0.7921351   0.4194749   1.4958654
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.7950462   0.4217152   1.4988752
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0759683   0.9942742   1.1643747
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1251971   1.0437815   1.2129631
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0452734   0.9659077   1.1311604
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1571575   1.0804791   1.2392776
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1460126   1.0668192   1.2310847
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2287630   1.1564404   1.3056085
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.9899421   0.8511225   1.1514035
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0447051   0.9013909   1.2108051
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1263305   0.9798548   1.2947025
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1071767   1.0758171   1.1394505
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0936890   1.0633640   1.1248789
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0494171   1.0194942   1.0802182
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2092554   1.1277852   1.2966110
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1820480   1.1021725   1.2677121
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0979779   1.0200534   1.1818553
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.6658953   0.9589243   2.8940837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.4331156   0.8058795   2.5485452
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.2540925   0.6877449   2.2868188
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         1.2115950   0.5608497   2.6173903
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         0.9177487   0.3920378   2.1484218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         1.2620492   0.5859725   2.7181621
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.1902581   0.7664167   1.8484908
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9839666   0.6136832   1.5776712
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.9776086   0.6112472   1.5635551
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.2000000   0.5616094   2.5640596
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         0.8000000   0.3389962   1.8879268
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.1000000   0.5051155   2.3954916
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         1.1585591   0.8080503   1.6611085
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         1.2065754   0.8479623   1.7168500
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.3300720   0.9501649   1.8618783
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3554185   0.8579853   2.1412480
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.2626023   0.7953770   2.0042879
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1681827   0.7288264   1.8723949
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.2476954   0.8246620   1.8877356
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.1588334   0.7480570   1.7951770
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3180292   0.8657336   2.0066229
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.5904383   0.4361073   0.7993845
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7365411   0.5720866   0.9482704
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7113719   0.5444947   0.9293938
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0870130   0.8043251   1.4690543
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2654878   0.9516880   1.6827567
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9216373   0.6609101   1.2852206
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9715076   0.7219453   1.3073387
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8203499   0.5821843   1.1559466
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0861095   0.8026687   1.4696398
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7172574   0.5846386   0.8799593
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8301337   0.6658422   1.0349630
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7048306   0.5650757   0.8791497
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9907128   0.7773130   1.2626984
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1269903   0.8938416   1.4209533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9570192   0.7563094   1.2109934
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.0118272   0.5104290   2.0057527
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         0.9959742   0.4896460   2.0258810
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.8246943   0.3863043   1.7605828
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1662006   0.9314776   1.4600715
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1856619   0.9636695   1.4587928
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2444474   1.0241020   1.5122023
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1440386   0.9818289   1.3330474
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1390441   0.9692737   1.3385502
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1285920   0.9828457   1.2959512
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0346668   0.6303056   1.6984385
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2232137   0.7709360   1.9408248
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1973887   0.7507165   1.9098284
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1490142   1.1133163   1.1858567
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1139696   1.0797159   1.1493100
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0692607   1.0388403   1.1005719
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2030928   1.0897114   1.3282711
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1436123   1.0443946   1.2522557
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0541092   0.9542423   1.1644277
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         0.7800016   0.3520945   1.7279526
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.6286850   0.9779616   2.7123916
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.4277970   0.8395140   2.4283147
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.7111056   0.3918947   1.2903240
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9212725   0.5526588   1.5357449
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.9452606   0.5738924   1.5569428
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.0652174   0.4348746   2.6092306
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         1.2009804   0.5158090   2.7962946
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.9140625   0.8932358   4.1015321
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.4178571   0.2188947   0.7976648
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.8532819   0.5408026   1.3463135
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         0.6753247   0.3940962   1.1572387
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.5374195   0.8594520   2.7501927
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3752723   0.7610372   2.4852583
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.6198530   0.9285390   2.8258626
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0989011   0.9086750   1.3289500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0256410   0.8316727   1.2648479
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0298273   0.8364943   1.2678440
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.2777871   1.2564852   4.1292280
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8342599   0.9591165   3.5079257
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         2.3776972   1.3197944   4.2835794
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.5411186   0.3584749   0.8168196
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.6326534   0.4294841   0.9319330
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9044586   0.6343962   1.2894864
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8428197   0.6539141   1.0862972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9732500   0.7415273   1.2773846
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9898645   0.7690736   1.2740415
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0001138   0.7853706   1.2735740
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0360245   0.8237264   1.3030380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9429400   0.7336642   1.2119110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0759060   0.9733947   1.1892130
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1315374   1.0309697   1.2419150
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0229922   0.9212540   1.1359659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2969688   1.1849817   1.4195393
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1803013   1.0678867   1.3045495
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3060970   1.2027594   1.4183130
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0237697   0.8580621   1.2214786
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0415304   0.8739011   1.2413139
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1423818   0.9690508   1.3467160
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2886681   1.1534909   1.4396867
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3214298   1.1884379   1.4693042
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1387011   1.0157947   1.2764786
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3425971   1.1669700   1.5446558
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3345296   1.1560355   1.5405834
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1796728   1.0174764   1.3677250


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0363286   -0.0639724    0.1366296
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0155950   -0.1148770    0.0836870
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0255250   -0.1339402    0.0828903
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0415381   -0.0636086    0.1466847
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0275894   -0.1203627    0.0651839
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1282675    0.0214101    0.2351249
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0125670   -0.0556692    0.0305351
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1166112    0.0355401    0.1976824
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0261417   -0.0844286    0.0321452
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0393006   -0.0722661   -0.0063351
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0088776   -0.0642765    0.0465213
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0182922   -0.1303008    0.0937164
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0370867    0.0083201    0.0658534
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0787183    0.0533479    0.1040887
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0168764   -0.0385158    0.0722687
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0242817    0.0158473    0.0327161
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0625487    0.0387983    0.0862991
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0904614   -0.0109629    0.1918856
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0258149   -0.0684380    0.1200678
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0144841   -0.1168059    0.0878377
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0042373   -0.0791207    0.0875953
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0620279   -0.0284088    0.1524645
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0617756   -0.0431332    0.1666843
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0636856   -0.0356465    0.1630178
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1583761   -0.2444840   -0.0722683
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0288830   -0.0485297    0.1062958
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0065835   -0.0526838    0.0395167
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0463161   -0.0742565   -0.0183758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0030858   -0.0437751    0.0499468
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0113296   -0.1135528    0.0908935
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0368359    0.0051252    0.0685467
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0207841    0.0010219    0.0405464
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0406376   -0.0510306    0.1323057
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0274531    0.0201120    0.0347941
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0319046    0.0128299    0.0509793
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0815377   -0.0456901    0.2087655
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0411369   -0.1775831    0.0953093
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0480749   -0.0449018    0.1410516
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.1424884   -0.2764712   -0.0085056
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0817034   -0.0352063    0.1986131
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0361486   -0.0851282    0.1574255
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1778595    0.0808542    0.2748649
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0950303   -0.1805708   -0.0094897
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0127342   -0.0512854    0.0258169
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0012957   -0.0821961    0.0796047
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0334846   -0.0011881    0.0681572
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1011862    0.0705220    0.1318504
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0314329   -0.0280603    0.0909261
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0294761    0.0171202    0.0418320
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0655422    0.0356283    0.0954561


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0590036   -0.1190436    0.2087222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0584813   -0.5040395    0.2550843
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0410847   -0.2310932    0.1195977
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.1195486   -0.2418524    0.3757755
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0414603   -0.1907990    0.0891497
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2073254    0.0116097    0.3642866
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0135870   -0.0613168    0.0319963
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1817894    0.0436957    0.2999419
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0599973   -0.2025363    0.0656463
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1132921   -0.2125350   -0.0221719
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0138936   -0.1044279    0.0692193
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0624257   -0.5223073    0.2585279
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0480698    0.0098763    0.0847900
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1146460    0.0766101    0.1511151
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0264646   -0.0644235    0.1095920
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0490121    0.0318231    0.0658959
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1075037    0.0654911    0.1476276
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.2669714   -0.1033490    0.5130000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1204694   -0.4493180    0.4662496
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0420216   -0.3856436    0.2163865
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0243902   -0.5953455    0.4033804
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.1382917   -0.0902171    0.3189051
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1571913   -0.1585125    0.3868634
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1545768   -0.1254554    0.3649322
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3100129   -0.4951415   -0.1478069
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0680577   -0.1334928    0.2337698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0274315   -0.2383928    0.1475924
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2374574   -0.3888563   -0.1025625
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0097024   -0.1491763    0.1466153
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0507473   -0.6244569    0.3203452
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1136871    0.0100858    0.2064458
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0869181    0.0006916    0.1657044
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1150685   -0.1866316    0.3400616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0664580    0.0484982    0.0840788
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0918199    0.0350603    0.1452408
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1922830   -0.1726390    0.4436423
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0974627   -0.4737732    0.1827614
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.2274764   -0.3607913    0.5614369
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.3598435   -0.7515813   -0.0557172
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2183453   -0.1618529    0.4741295
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0425955   -0.1117937    0.1755455
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.4716275    0.1458987    0.6731331
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3163051   -0.6340220   -0.0603646
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0561432   -0.2404908    0.1008087
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0022964   -0.1564397    0.1313009
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0436845   -0.0027880    0.0880032
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1568829    0.1074440    0.2035835
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0523881   -0.0522444    0.1466162
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1363675    0.0778658    0.1911578
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1731949    0.0897681    0.2489752

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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country                        hhwealth_quart    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     0       54     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     1        7     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     0       48     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     1       12     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     0       38     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     1       23     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     0       49     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     1       11     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                     0       47     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                     1        6     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                     0       48     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                     1        5     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                     0       49     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                     1        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                     0       45     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                     1        6     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                     0       48     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                     1       11     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                     0       42     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                     1       18     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                     0       42     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                     1       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                     0       45     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                     1       13     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     0       52     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     1        7     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     0       54     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     1        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     0       56     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     1        3     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     0       53     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     1        6     236
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                     0       50     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                     1       18     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                     0       57     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                     1       11     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                     0       56     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                     1       15     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                     0       50     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                     1       15     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     0       49     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     1       16     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     0       49     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     1       15     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     0       43     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     1       21     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     0       46     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     1       18     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0       25     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       38     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       35     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       28     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0       29     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       33     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0       27     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       35     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                     0       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                     1       68     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                     0       44     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                     1       47     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                     0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                     1       63     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                     0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                     1       59     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                     0       79     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                     1       21     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                     0       77     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                     1       28     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                     0       71     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                     1       31     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                     0       81     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                     1       22     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     0      141     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     1       34     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     0      153     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     1       21     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     0      162     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     1       14     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     0      149     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     1       26     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      515    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       78    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      656    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       63    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      436    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       47    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      540    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       49    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     0      133     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     1       42     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     0      132     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     1       43     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     0      130     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     1       44     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     0      134     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     1       40     698
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                     0       50     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                     1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                     0       55     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                     1        4     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                     0       45     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                     1        7     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                     0       50     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                     1        2     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                     0      291    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                     1      194    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                     0      112    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                     1      133    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                     0      117    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                     1      143    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                     0      154    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                     1      134    1278
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                     0      635    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                     1      208    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                     0      416    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                     1      271    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                     0      331    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                     1      211    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                     0      586    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                     1      399    3057
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                     0      176     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                     1       41     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                     0      153     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                     1       51     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                     0      149     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                     1       50     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                     0      169     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                     1       28     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     0     6240   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     1      917   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     0     5110   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     1     1476   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     0     5283   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     1     1359   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     0     5550   27203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     1     1268   27203
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     0     1161    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     1      189    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     0     1012    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     1      360    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     0     1049    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     1      294    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     0     1100    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     1      261    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     0       60     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     1        1     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     0       54     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     1        6     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     0       54     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     1        7     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     0       58     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     1        2     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                     0       48     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                     1        5     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                     0       48     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                     1        5     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                     0       52     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                     1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                     0       46     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                     1        5     210
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                     0       59     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                     1        0     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                     0       50     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                     1       10     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                     0       51     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                     1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                     0       55     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                     1        3     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     0       56     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     0       55     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     1        4     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     0       58     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     1        1     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     0       57     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     1        2     236
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                     0       60     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                     1        8     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                     0       61     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                     1        7     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                     0       61     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                     1       10     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                     0       57     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                     1        8     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     0       55     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     1       10     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     0       56     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     1        8     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     0       61     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     1        3     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     0       59     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     1        5     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0       56     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1        7     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       51     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       12     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0       53     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1        9     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0       55     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1        7     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                     0       58     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                     1       37     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                     0       80     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                     1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                     0       70     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                     1       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                     0       69     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                     1       21     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                     0       87     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                     1       13     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                     0       91     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                     1       14     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                     0       78     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                     1       24     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                     0       92     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                     1       11     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     0      165     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     0      165     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     1        9     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     0      172     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     0      167     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     1        8     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      555    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       38    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      694    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       25    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      461    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       22    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      571    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       18    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     0      163     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     1       12     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     0      157     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     1       18     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     0      162     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     1       12     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     0      156     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     1       18     698
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                     0       51     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                     1        1     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                     0       58     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                     1        1     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                     0       47     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                     1        5     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                     0       50     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                     1        2     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                     0      353    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                     1       29    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                     0      171    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                     1       26    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                     0      185    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                     1       20    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                     0      223    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                     1       30    1037
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                     0      806    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                     1       37    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                     0      632    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                     1       55    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                     0      505    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                     1       37    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                     0      923    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                     1       62    3057
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                     0       70     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                     1        3     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                     0       59     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                     1        9     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                     0       61     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                     1        3     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                     0       60     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                     1        4     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     0     6422   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     1      709   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     0     5369   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     1     1203   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     0     5517   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     1     1108   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     0     5827   27137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     1      982   27137
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     0     1175    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     1      102    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     0     1103    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     1      164    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     0     1146    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     1      126    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     0     1174    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     1      127    5117


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/d8f74378-2ffc-4acc-be18-7b00454ec28d/e8eddae3-ef3f-4805-9f3d-243ae81c9766/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8f74378-2ffc-4acc-be18-7b00454ec28d/e8eddae3-ef3f-4805-9f3d-243ae81c9766/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8f74378-2ffc-4acc-be18-7b00454ec28d/e8eddae3-ef3f-4805-9f3d-243ae81c9766/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8f74378-2ffc-4acc-be18-7b00454ec28d/e8eddae3-ef3f-4805-9f3d-243ae81c9766/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346050   0.1949032
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.2000000   0.0985781   0.3014219
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.3770492   0.2551760   0.4989224
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1833333   0.0852230   0.2814437
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1864407   0.0868513   0.2860301
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3000000   0.1837995   0.4162005
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2758621   0.1605920   0.3911322
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.2241379   0.1165880   0.3316878
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.2647059   0.1596535   0.3697582
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1617647   0.0740811   0.2494483
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.2112676   0.1161414   0.3063938
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.2307692   0.1281548   0.3333837
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2461538   0.1412280   0.3510797
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2343750   0.1303906   0.3383594
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.3281250   0.2128677   0.4433823
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2812500   0.1708828   0.3916172
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6031746   0.4821233   0.7242259
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4444444   0.3214967   0.5673922
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5322581   0.4078104   0.6567058
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5645161   0.4408511   0.6881811
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7083333   0.6172880   0.7993787
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5164835   0.4136714   0.6192956
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6631579   0.5679899   0.7583259
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6483516   0.5501158   0.7465875
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2100000   0.1300715   0.2899285
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2666667   0.1819793   0.3513541
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3039216   0.2145523   0.3932908
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2135922   0.1343464   0.2928381
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1942857   0.1356246   0.2529468
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1206897   0.0722512   0.1691281
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0795455   0.0395408   0.1195502
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1485714   0.0958386   0.2013043
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1315346   0.1043259   0.1587433
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0876217   0.0669504   0.1082930
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0973085   0.0708716   0.1237454
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0831919   0.0608838   0.1054999
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2400000   0.1766783   0.3033217
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2457143   0.1818845   0.3095441
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2528736   0.1882437   0.3175035
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2298851   0.1673220   0.2924481
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4000000   0.3563833   0.4436167
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5428571   0.4804544   0.6052599
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5500000   0.4895051   0.6104949
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4652778   0.4076486   0.5229069
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2467378   0.2176309   0.2758448
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3944687   0.3579164   0.4310211
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3892989   0.3482430   0.4303548
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4050761   0.3744142   0.4357381
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1889401   0.1368239   0.2410563
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.2500000   0.1905435   0.3094565
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2512563   0.1909569   0.3115556
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1421320   0.0933413   0.1909227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1281263   0.1191764   0.1370762
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2241118   0.2133754   0.2348482
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2046070   0.1940304   0.2151837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1859783   0.1763679   0.1955887
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1400000   0.1197753   0.1602247
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2623907   0.2372814   0.2874999
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2189129   0.1934989   0.2443269
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1917708   0.1683753   0.2151663
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1176471   0.0409277   0.1943664
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1029412   0.0305812   0.1753012
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1408451   0.0597816   0.2219086
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1230769   0.0430640   0.2030899
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1111111   0.0333521   0.1888701
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1904762   0.0933171   0.2876353
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1451613   0.0573015   0.2330211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1129032   0.0339697   0.1918367
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3894737   0.2912834   0.4876639
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1111111   0.0460951   0.1761271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2473118   0.1595052   0.3351185
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2333333   0.1458331   0.3208336
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1300000   0.0640052   0.1959948
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1333333   0.0682336   0.1984331
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2352941   0.1528744   0.3177138
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1067961   0.0470771   0.1665152
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0640809   0.0443660   0.0837959
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0347705   0.0213770   0.0481641
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0455487   0.0269501   0.0641473
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0305603   0.0166569   0.0444637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0685714   0.0311012   0.1060417
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1028571   0.0578182   0.1478961
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0689655   0.0312879   0.1066432
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1034483   0.0581654   0.1487312
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0759162   0.0493427   0.1024897
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1319797   0.0846926   0.1792668
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0975610   0.0569234   0.1381985
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1185771   0.0787214   0.1584327
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0438909   0.0300601   0.0577216
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0800582   0.0597616   0.1003549
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0682657   0.0470300   0.0895014
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0629442   0.0477750   0.0781133
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0994250   0.0916922   0.1071579
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1830493   0.1734971   0.1926015
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1672453   0.1575515   0.1769391
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1442209   0.1349473   0.1534945
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0798747   0.0625679   0.0971815
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1294396   0.1111770   0.1477022
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0990566   0.0784905   0.1196227
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0976172   0.0803332   0.1149013


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2468085   0.1915661   0.3020510
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2169118   0.1678424   0.2659811
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2723735   0.2178399   0.3269072
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5360000   0.4740573   0.5979427
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0994128   0.0873992   0.1114263
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4726135   0.4452311   0.4999958
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3562316   0.3392530   0.3732102
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2080783   0.1802263   0.2359304
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1845385   0.1789329   0.1901441
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2034648   0.1916516   0.2152780
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1213235   0.0824503   0.1601967
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1400000   0.0969015   0.1830985
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432047   0.0350415   0.0513679
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1012536   0.0828843   0.1196229
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624796   0.0538987   0.0710604
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1474739   0.1424227   0.1525252
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1014266   0.0924810   0.1103722


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.7428571   0.7352116   4.1315329
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         3.2857143   1.5219238   7.0935998
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.5976190   0.6627391   3.8512693
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.6090909   0.8318141   3.1126829
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.4796238   0.7509669   2.9152906
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2021944   0.5863224   2.4649770
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.6111111   0.3121489   1.1964058
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.7981221   0.4379315   1.4545628
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         0.8717949   0.4803647   1.5821860
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         0.9521484   0.5146389   1.7615975
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3330078   0.7672788   2.3158594
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1425781   0.6401197   2.0394384
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7368421   0.5235384   1.0370515
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8824278   0.6484254   1.2008765
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9359083   0.6953549   1.2596795
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7291532   0.5753226   0.9241153
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9362229   0.7721662   1.1351356
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9153200   0.7503818   1.1165125
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2698413   0.7735147   2.0846363
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4472456   0.8946626   2.3411282
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0171059   0.5977622   1.7306285
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.6211968   0.3759328   1.0264745
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.4094251   0.2277308   0.7360839
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7647059   0.4798666   1.2186201
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6661496   0.4867516   0.9116667
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7397940   0.5257911   1.0408985
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6324714   0.4507753   0.8874046
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0238095   0.7069955   1.4825921
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0536398   0.7297284   1.5213290
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9578544   0.6556638   1.3993224
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3571429   1.1582830   1.5901440
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.3750000   1.1777112   1.6053384
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1631944   0.9862464   1.3718898
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5987361   1.3760335   1.8574819
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5777835   1.3468738   1.8482806
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6417269   1.4270152   1.8887444
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3231707   0.9192704   1.9045330
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.3298198   0.9225811   1.9168188
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.7522595   0.4843042   1.1684688
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.7491470   1.6113442   1.8987348
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5969167   1.4702406   1.7345073
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.4515231   1.3355242   1.5775972
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8742191   1.5783897   2.2254942
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5636634   1.2991915   1.8819730
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3697911   1.1354509   1.6524957
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.8750000   0.3354229   2.2825660
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         1.1971831   0.5016735   2.8569328
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.0461538   0.4165748   2.6272303
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7142857   0.7210837   4.0754987
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.3064516   0.5179166   3.2955420
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0161290   0.3778677   2.7324859
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.2852853   0.1508590   0.5394953
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.6349898   0.4108219   0.9814766
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.5990991   0.3812892   0.9413319
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0256410   0.5071119   2.0743736
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8099548   0.9768017   3.3537372
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8215086   0.3860216   1.7482867
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5426030   0.3314234   0.8883442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7107987   0.4262964   1.1851727
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4769011   0.2753654   0.8259377
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.5000000   0.7446992   3.0213541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0057471   0.4644170   2.1780581
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.5086207   0.7490467   3.0384441
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.7384912   1.0535020   2.8688615
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2851135   0.7458453   2.2142886
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.5619463   0.9614134   2.5375933
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.8240292   1.2172649   2.7332444
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5553505   0.9989080   2.4217597
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4341061   0.9644804   2.1324025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.8410783   1.6815468   2.0157449
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.6821242   1.5326485   1.8461781
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.4505488   1.3172277   1.5973639
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.6205333   1.2490560   2.1024904
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2401498   0.9158134   1.6793505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2221293   0.9237640   1.6168632


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1042542    0.0273661    0.1811422
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0603678   -0.0290170    0.1497527
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0477941   -0.1368211    0.0412328
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0262197   -0.0655103    0.1179497
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0671746   -0.1725548    0.0382056
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0729446   -0.1530367    0.0071475
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0387805   -0.0321244    0.1096854
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0585714   -0.1072046   -0.0099383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0321218   -0.0548450   -0.0093986
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0021203   -0.0527469    0.0569876
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0726135    0.0378532    0.1073737
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1094938    0.0836436    0.1353439
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0191382   -0.0261278    0.0644043
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0564122    0.0489392    0.0638852
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0634648    0.0452534    0.0816762
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0036765   -0.0630623    0.0704152
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0288889   -0.0407999    0.0985776
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1421911   -0.2235039   -0.0608783
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0212195   -0.0374004    0.0798394
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0208762   -0.0370613   -0.0046912
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0173885   -0.0162721    0.0510490
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0253374    0.0024609    0.0482138
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0185887    0.0059625    0.0312149
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0480489    0.0414729    0.0546248
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0215519    0.0062301    0.0368737


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.4760285    0.0014882    0.7250446
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2445938   -0.2167145    0.5310005
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2203390   -0.7068479    0.1274986
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0962637   -0.3115870    0.3772893
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1253258   -0.3411650    0.0557776
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1148031   -0.2492557    0.0051789
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1558824   -0.1824009    0.3973832
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.4315789   -0.8323031   -0.1184930
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3231157   -0.5698034   -0.1151938
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0087574   -0.2458479    0.2113308
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1536424    0.0764998    0.2243411
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3073668    0.2312478    0.3759487
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0919761   -0.1536068    0.2852787
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3056932    0.2637078    0.3452846
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3119203    0.2172287    0.3951571
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0303030   -0.7099137    0.4500821
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2063492   -0.4803640    0.5745090
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5750145   -0.9413714   -0.2777929
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1403226   -0.3480279    0.4517582
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.4831939   -0.8968376   -0.1597535
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2022857   -0.2990138    0.5101299
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2502368   -0.0082753    0.4424690
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2975163    0.0683899    0.4702899
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3258127    0.2798310    0.3688586
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2124877    0.0458187    0.3500443

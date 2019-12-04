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




# Results Detail

## Results Plots
![](/tmp/33bcef54-843b-4c76-82e7-5909608611a2/29fa2520-252e-4ecb-82e6-fa6b11bea7b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33bcef54-843b-4c76-82e7-5909608611a2/29fa2520-252e-4ecb-82e6-fa6b11bea7b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/33bcef54-843b-4c76-82e7-5909608611a2/29fa2520-252e-4ecb-82e6-fa6b11bea7b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33bcef54-843b-4c76-82e7-5909608611a2/29fa2520-252e-4ecb-82e6-fa6b11bea7b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346050   0.1949032
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.2000000   0.0985781   0.3014219
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.3770492   0.2551760   0.4989224
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1833333   0.0852230   0.2814437
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.2144483   0.1145692   0.3143274
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3203441   0.2033463   0.4373419
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2933989   0.1763505   0.4104473
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.2328344   0.1273430   0.3383257
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.2516571   0.1515568   0.3517574
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1599704   0.0741934   0.2457473
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1861363   0.0958294   0.2764431
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.2199077   0.1225538   0.3172616
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2460681   0.1406893   0.3514469
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2366316   0.1325326   0.3407307
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.3275748   0.2090534   0.4460961
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2929387   0.1817034   0.4041740
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5938440   0.4653004   0.7223877
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4324106   0.3152077   0.5496134
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5395335   0.4086784   0.6703886
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5690943   0.4443038   0.6938848
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7008538   0.6068866   0.7948209
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5217951   0.4156496   0.6279407
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6594660   0.5623116   0.7566204
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6578050   0.5599538   0.7556561
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2012055   0.1208579   0.2815530
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2729308   0.1904386   0.3554229
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2967331   0.2123366   0.3811295
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2084378   0.1313183   0.2855573
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1987515   0.1390155   0.2584875
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1206576   0.0716403   0.1696748
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0787284   0.0387425   0.1187142
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1483110   0.0949924   0.2016297
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1281903   0.1016351   0.1547454
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0894293   0.0688544   0.1100042
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0962240   0.0703176   0.1221304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0832225   0.0611021   0.1053429
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2440091   0.1847351   0.3032830
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2286332   0.1682426   0.2890237
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2644370   0.2029432   0.3259308
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2215377   0.1652110   0.2778644
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4162687   0.3737724   0.4587651
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5167862   0.4574343   0.5761380
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5354619   0.4798741   0.5910496
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4760094   0.4206745   0.5313444
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2801187   0.2524750   0.3077624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3849308   0.3496235   0.4202381
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3732235   0.3347455   0.4117014
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.3876082   0.3582150   0.4170014
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1876405   0.1354515   0.2398295
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.2517546   0.1916097   0.3118996
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2594339   0.1987563   0.3201114
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1365899   0.0884923   0.1846876
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1731997   0.1642723   0.1821271
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1997120   0.1907067   0.2087173
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1914610   0.1827150   0.2002070
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1848049   0.1769074   0.1927023
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1586641   0.1398509   0.1774773
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2492357   0.2265763   0.2718951
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2153694   0.1923133   0.2384256
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1878822   0.1666683   0.2090961
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1176471   0.0409277   0.1943664
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1029412   0.0305812   0.1753012
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1408451   0.0597816   0.2219086
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1230769   0.0430640   0.2030899
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1111111   0.0333521   0.1888701
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1904762   0.0933171   0.2876353
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1451613   0.0573015   0.2330211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1129032   0.0339697   0.1918367
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3924486   0.2941951   0.4907020
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1160340   0.0481259   0.1839421
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2381787   0.1503163   0.3260411
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2382917   0.1504600   0.3261235
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1341974   0.0683700   0.2000249
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1377299   0.0730064   0.2024533
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2502588   0.1677398   0.3327778
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1137329   0.0526499   0.1748159
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0625105   0.0428584   0.0821627
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0349304   0.0215964   0.0482643
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0451829   0.0264013   0.0639645
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0308444   0.0168773   0.0448115
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0679573   0.0304830   0.1054316
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1064121   0.0609227   0.1519014
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0696161   0.0326407   0.1065915
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1006987   0.0544582   0.1469393
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0746726   0.0484484   0.1008968
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1477137   0.1008273   0.1946002
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0916415   0.0514574   0.1318255
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1208312   0.0809136   0.1607489
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0456297   0.0315491   0.0597104
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0817823   0.0612995   0.1022652
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0665260   0.0451619   0.0878900
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0622702   0.0471470   0.0773934
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1380138   0.1309357   0.1450919
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1631574   0.1554412   0.1708735
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1540109   0.1464620   0.1615598
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1440072   0.1372122   0.1508022
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0967076   0.0823306   0.1110846
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1158982   0.1006442   0.1311522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0999181   0.0833701   0.1164661
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0924954   0.0794609   0.1055298


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
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.4938058   0.8282149   2.6942954
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.3681570   0.7453196   2.5114779
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.0857366   0.5695288   2.0698234
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.6356680   0.3309066   1.2211111
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.7396423   0.4039201   1.3544034
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         0.8738385   0.4888131   1.5621386
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         0.9616510   0.5221845   1.7709691
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3312362   0.7608693   2.3291646
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1904780   0.6729477   2.1060149
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7281551   0.5153537   1.0288271
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9085442   0.6567000   1.2569705
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9583229   0.7057164   1.3013482
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7445136   0.5834066   0.9501100
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9409466   0.7710202   1.1483233
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9385766   0.7682265   1.1467010
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3564781   0.8260696   2.2274551
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4747766   0.9085965   2.3937643
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0359450   0.6043516   1.7757576
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.6070776   0.3665377   1.0054717
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.3961146   0.2197748   0.7139436
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7462133   0.4671466   1.1919907
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6976292   0.5132529   0.9482391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7506344   0.5356198   1.0519626
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6492107   0.4644620   0.9074467
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9369863   0.6601804   1.3298535
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0837177   0.7799745   1.5057467
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9079077   0.6453755   1.2772351
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2414724   1.0675585   1.4437182
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2863369   1.1160211   1.4826447
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1435147   0.9826860   1.3306652
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.3741703   1.2040561   1.5683190
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3323761   1.1587277   1.5320478
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3837284   1.2254146   1.5624952
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3416860   0.9299282   1.9357639
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.3826113   0.9615969   1.9879579
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.7279343   0.4650452   1.1394339
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1530738   1.0868479   1.2233352
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1054349   1.0423764   1.1723083
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0670047   1.0089941   1.1283505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5708383   1.3603713   1.8138672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3573921   1.1632152   1.5839831
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1841502   1.0133973   1.3836742
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         0.8750000   0.3354229   2.2825660
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         1.1971831   0.5016735   2.8569328
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.0461538   0.4165748   2.6272303
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7142857   0.7210837   4.0754987
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.3064516   0.5179166   3.2955420
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0161290   0.3778677   2.7324859
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.2956667   0.1565029   0.5585765
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.6069042   0.3887442   0.9474936
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.6071923   0.3893754   0.9468561
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0263228   0.5218466   2.0184828
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8648559   1.0324322   3.3684414
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8475043   0.4094376   1.7542688
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5587917   0.3413351   0.9147846
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7228049   0.4292823   1.2170243
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4934272   0.2844152   0.8560387
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.5658660   0.7808258   3.1401836
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0244090   0.4786998   2.1922167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.4817931   0.7232170   3.0360334
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.9781520   1.2360949   3.1656836
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2272436   0.7021186   2.1451174
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.6181471   1.0022588   2.6124989
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.7923034   1.2059571   2.6637359
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4579521   0.9351882   2.2729375
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3646852   0.9228654   2.0180254
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1821814   1.1169619   1.2512091
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1159095   1.0539058   1.1815611
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0434260   0.9878323   1.1021485
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1984399   0.9990503   1.4376236
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.0331983   0.8370427   1.2753216
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9564437   0.7982446   1.1459953


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1042542    0.0273661    0.1811422
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0323602   -0.0567941    0.1215146
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0347454   -0.1167854    0.0472947
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0263054   -0.0655510    0.1181618
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0578440   -0.1694671    0.0537791
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0654650   -0.1482031    0.0172731
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0475750   -0.0226159    0.1177660
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0630372   -0.1127517   -0.0133228
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0287775   -0.0508686   -0.0066864
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0018887   -0.0519605    0.0481830
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0563447    0.0236614    0.0890281
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0761129    0.0521552    0.1000706
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0204378   -0.0248376    0.0657132
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0113388    0.0045736    0.0181040
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0448007    0.0285165    0.0610848
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0036765   -0.0630623    0.0704152
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0288889   -0.0407999    0.0985776
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1451660   -0.2267898   -0.0635421
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0170221   -0.0414404    0.0754846
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0193058   -0.0354279   -0.0031838
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0180026   -0.0156884    0.0516935
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0265810    0.0041158    0.0490462
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0168498    0.0040576    0.0296421
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0094601    0.0044990    0.0144212
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0047190   -0.0068377    0.0162758


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.4760285    0.0014882    0.7250446
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1311147   -0.3139631    0.4254316
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.1601821   -0.6042338    0.1609562
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0965785   -0.3121785    0.3780036
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1079179   -0.3372322    0.0820725
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1030315   -0.2419661    0.0203610
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1912330   -0.1472264    0.4298387
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.4644848   -0.8738946   -0.1445230
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2894751   -0.5295464   -0.0870844
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0078008   -0.2373590    0.1791691
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1192194    0.0469554    0.1860041
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2136613    0.1439474    0.2776979
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0982218   -0.1476915    0.2914439
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0614440    0.0239450    0.0975022
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2201888    0.1366447    0.2956485
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0303030   -0.7099137    0.4500821
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2063492   -0.4803640    0.5745090
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5870448   -0.9557641   -0.2878400
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1125655   -0.3704177    0.4253285
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.4468457   -0.8600179   -0.1254528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2094297   -0.2935760    0.5168421
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2625193    0.0088224    0.4512811
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2696854    0.0376625    0.4457668
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0641477    0.0298219    0.0972589
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0465266   -0.0744319    0.1538678

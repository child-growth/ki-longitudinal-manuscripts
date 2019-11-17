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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        hhwealth_quart    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       44     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1       17     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       40     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       20     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       36     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       25     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       38     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1       22     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0       44     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1        9     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0       48     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        5     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0       50     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        3     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0       48     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        3     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       34     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       25     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       26     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       34     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       28     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       30     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       33     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       25     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       42     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1       17     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0       37     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0       47     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1       12     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0       37     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1       22     236
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0       62     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        6     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0       62     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        6     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0       66     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        5     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0       56     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        9     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       52     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1       13     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       49     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1       15     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       47     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1       17     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       52     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1       12     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       58     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        5     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       56     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        7     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       52     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       10     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       48     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       14     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       44     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       52     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       54     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       53     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       32     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       68     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       34     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       71     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       42     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       60     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       70     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      107     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       68     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      112     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       62     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      121     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       55     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      114     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       61     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      447    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      146    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      558    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      161    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      367    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      116    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      448    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      141    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       68     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1      102     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       73     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1      101     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       70     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1      102     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       70     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1      100     686
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0       50     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0       57     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0       49     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        3     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0       51     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      366    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1      110    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0      166    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       78    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0      190    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       68    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0      211    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       74    1263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      531    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      309    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      372    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      309    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      330    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      210    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      582    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      401    3044
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0      208     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        9     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0      180     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1       24     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0      180     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1       19     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0      183     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1       14     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     5435   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     1693   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     4661   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     1825   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     4864   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     1707   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     5024   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     1723   26932
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      988    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      362    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      891    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      481    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      900    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      444    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      965    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      396    5427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       47     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1       14     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       47     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       13     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       47     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       14     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       44     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1       16     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0       45     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1        8     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0       49     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0       51     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0       50     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        1     210
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       14     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       40     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       20     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       36     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       22     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       38     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       20     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       44     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1       15     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0       44     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1       15     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0       51     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        8     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0       50     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        9     236
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0       66     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        2     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0       66     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        2     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0       69     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        2     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0       61     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        4     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       58     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        7     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       55     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        9     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       58     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        6     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       58     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        6     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       61     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        2     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       60     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       57     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       59     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        3     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       41     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       59     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       45     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       45     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       55     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       47     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       58     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       50     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       52     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       45     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       58     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      124     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      123     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      140     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       36     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      132     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       43     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      506    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       87    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      613    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      106    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      429    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       54    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      504    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       85    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0      109     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       61     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0      113     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       61     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0      104     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       68     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      102     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       68     686
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   0       51     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   0       49     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   1        3     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   1        0     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      297    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       72    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0      146    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       50    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0      166    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       36    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0      200    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       48    1015
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      627    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      213    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      504    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      176    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      424    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      116    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      771    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      212    3043
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0       73     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       65     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        3     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       63     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        1     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     5959   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     1140   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     5212   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     1254   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     5366   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     1175   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     5570   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     1159   26835
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0     1139    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      132    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0     1112    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      142    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0     1128    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      135    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     1156    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      139    5083
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       54     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        7     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       48     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       10     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       45     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       16     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       50     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1       10     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0       51     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0       51     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0       50     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0       49     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       45     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       38     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       22     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       42     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       16     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       46     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       12     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       53     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        6     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0       50     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        8     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0       54     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0       42     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1       17     235
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0       62     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        5     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0       64     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        4     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0       68     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        3     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0       58     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        6     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       56     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        7     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       54     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1       10     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       52     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1       12     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       56     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        8     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       59     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       53     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        5     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       54     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       51     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       11     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       77     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       63     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       65     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       30     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       69     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       22     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       65     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       35     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       71     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       34     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       75     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       27     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       72     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       31     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      111     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       27     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      136     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       24     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      143     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       22     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      126     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       26     615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      402    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       86    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      529    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       80    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      327    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       80    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      429    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       77    2010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       79     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       69     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       72     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       84     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       71     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       76     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       65     590
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        1     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0       57     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      386    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       47    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0      191    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       34    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0      203    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       38    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0      225    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       30    1154
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      626    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      145    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      406    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      200    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      368    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      136    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      660    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      268    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0      207     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        9     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0      174     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1       22     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0      177     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1       19     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0      184     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1       13     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     4431   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      694   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     2955   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      737   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     3345   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      688   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     3726   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      713   17289
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0     1084    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      263    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      971    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      400    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      973    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      371    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     1054    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      307    5423


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/d53cac1c-0af6-44e4-bff9-1ef5eea27b43/2fbcc69a-3165-48a1-96a9-ee0453aaed45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d53cac1c-0af6-44e4-bff9-1ef5eea27b43/2fbcc69a-3165-48a1-96a9-ee0453aaed45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d53cac1c-0af6-44e4-bff9-1ef5eea27b43/2fbcc69a-3165-48a1-96a9-ee0453aaed45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d53cac1c-0af6-44e4-bff9-1ef5eea27b43/2fbcc69a-3165-48a1-96a9-ee0453aaed45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.2859788   0.1661164   0.4058411
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.3448248   0.2198335   0.4698161
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.4037903   0.2789457   0.5286349
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.3604074   0.2314032   0.4894117
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.4009536   0.2716527   0.5302544
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5609943   0.4339336   0.6880550
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4980234   0.3680758   0.6279709
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4201068   0.2905845   0.5496290
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.2918034   0.1745497   0.4090571
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.3738122   0.2486874   0.4989369
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.2055455   0.1016351   0.3094559
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.3828691   0.2552939   0.5104444
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.0882353   0.0206961   0.1557745
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.0882353   0.0206961   0.1557745
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.0704225   0.0107991   0.1300460
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1384615   0.0543427   0.2225804
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1986334   0.1006994   0.2965675
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2274280   0.1220030   0.3328529
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2601569   0.1505472   0.3697665
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1841226   0.0867780   0.2814673
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0793651   0.0124835   0.1462467
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1111111   0.0333521   0.1888701
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1612903   0.0695559   0.2530248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2258065   0.1215230   0.3300899
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5348886   0.4335007   0.6362766
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.6002061   0.4972740   0.7031381
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7276694   0.6387787   0.8165600
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5789699   0.4780592   0.6798806
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6839334   0.5911868   0.7766800
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6772708   0.5887188   0.7658228
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5999345   0.5037110   0.6961580
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6950571   0.6026447   0.7874694
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3705664   0.3098382   0.4312946
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3441445   0.2866101   0.4016788
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3618907   0.3001946   0.4235868
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3269982   0.2671079   0.3868886
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2454364   0.2110777   0.2797951
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2245272   0.1940448   0.2550097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2413470   0.2032775   0.2794166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2399757   0.2052251   0.2747263
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6192822   0.5486073   0.6899571
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5599392   0.4907369   0.6291414
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5988716   0.5294260   0.6683172
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5877664   0.5179628   0.6575700
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2437962   0.2112766   0.2763157
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2958747   0.2458510   0.3458983
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2641022   0.2180818   0.3101226
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2596608   0.2153255   0.3039962
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3678807   0.3388658   0.3968957
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4430128   0.4079989   0.4780267
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3894658   0.3508685   0.4280632
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4149475   0.3863792   0.4435157
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0414747   0.0149300   0.0680193
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1176471   0.0734075   0.1618866
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0954774   0.0546222   0.1363326
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0710660   0.0351652   0.1069668
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2504441   0.2391564   0.2617319
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2700128   0.2588374   0.2811881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2569441   0.2456907   0.2681976
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2569118   0.2459311   0.2678926
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2681971   0.2407178   0.2956765
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3442671   0.3175052   0.3710290
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3311987   0.3027894   0.3596081
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2926677   0.2673555   0.3179799
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.2290905   0.1190811   0.3391000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.2323937   0.1194909   0.3452965
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2258817   0.1164103   0.3353531
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.2794916   0.1616166   0.3973665
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.2321074   0.1217223   0.3424924
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3221189   0.2008133   0.4434245
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.3606475   0.2329547   0.4883403
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.3285981   0.2036554   0.4535408
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.2542373   0.1428940   0.3655806
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.2542373   0.1428940   0.3655806
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1355932   0.0480501   0.2231364
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1525424   0.0606037   0.2444811
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1076923   0.0321852   0.1831994
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.1406250   0.0552900   0.2259600
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.0937500   0.0221992   0.1653008
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.0937500   0.0221992   0.1653008
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4319448   0.3299716   0.5339180
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5096803   0.4052031   0.6141574
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6388672   0.5424452   0.7352891
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4974259   0.3923440   0.6025077
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5701055   0.4776427   0.6625683
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5232791   0.4379426   0.6086156
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5107770   0.4159504   0.6056036
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5795204   0.4888052   0.6702356
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2919499   0.2249916   0.3589082
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2917487   0.2233903   0.3601072
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2090294   0.1473936   0.2706651
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2460636   0.1788660   0.3132612
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1462766   0.1177561   0.1747971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1485278   0.1223382   0.1747175
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1099071   0.0821243   0.1376900
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1453604   0.1167874   0.1739334
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3782278   0.3130299   0.4434256
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3535201   0.2917792   0.4152610
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3899175   0.3255444   0.4542907
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3959317   0.3300184   0.4618450
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1917682   0.1526420   0.2308945
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2676137   0.2087591   0.3264683
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1762271   0.1251703   0.2272838
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1928406   0.1442985   0.2413827
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2386311   0.2157458   0.2615163
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2448993   0.2189490   0.2708496
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2290063   0.2003090   0.2577037
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2360949   0.2146799   0.2575098
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1624013   0.1532450   0.1715575
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1880946   0.1787897   0.1973995
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1794158   0.1700659   0.1887656
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1763192   0.1675511   0.1850873
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1016775   0.0844618   0.1188932
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1084120   0.0935909   0.1232331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1097519   0.0938824   0.1256215
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1101946   0.0960765   0.1243128
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346037   0.1949045
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1724138   0.0749971   0.2698305
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2622951   0.1516770   0.3729132
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1666667   0.0721708   0.2611625
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.2390198   0.1299721   0.3480675
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3667119   0.2426867   0.4907372
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2855991   0.1661930   0.4050053
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.2096086   0.1031299   0.3160873
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1016949   0.0244073   0.1789825
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1379310   0.0489982   0.2268639
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.0847458   0.0135297   0.1559618
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.2881356   0.1723258   0.4039454
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1111111   0.0333552   0.1888670
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.1562500   0.0671191   0.2453809
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.1875000   0.0916872   0.2833128
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1250000   0.0438160   0.2061840
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1982246   0.1194939   0.2769553
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3103107   0.2123949   0.4082265
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3163374   0.2225498   0.4101250
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2477595   0.1585490   0.3369701
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3552958   0.2607994   0.4497921
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3336783   0.2425799   0.4247767
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2659640   0.1803371   0.3515909
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3078479   0.2181051   0.3975907
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1829029   0.1162470   0.2495589
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1508017   0.0954878   0.2061156
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1419355   0.0886537   0.1952173
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1700886   0.1106500   0.2295272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1766435   0.1436449   0.2096421
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1282693   0.1019109   0.1546276
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1979196   0.1599120   0.2359273
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1565436   0.1250554   0.1880319
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4757315   0.3967343   0.5547288
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4867225   0.4057667   0.5676782
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4626561   0.3839507   0.5413616
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4676551   0.3856882   0.5496221
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1070570   0.0779540   0.1361601
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1508797   0.1036752   0.1980843
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1599273   0.1139268   0.2059278
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1193938   0.0797611   0.1590264
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2033580   0.1756025   0.2311135
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3256214   0.2882900   0.3629529
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2616626   0.2233886   0.2999365
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2804763   0.2516478   0.3093048
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0416667   0.0150015   0.0683318
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1122449   0.0680248   0.1564650
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0969388   0.0554914   0.1383862
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313003   0.1006794
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1475556   0.1362635   0.1588477
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1891268   0.1754713   0.2027823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1670973   0.1543395   0.1798551
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1605244   0.1481103   0.1729386
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2002061   0.1743541   0.2260581
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2861351   0.2602295   0.3120406
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2741887   0.2467869   0.3015904
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2260735   0.2013824   0.2507647


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3471074   0.2870050   0.4072099
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4851064   0.4210714   0.5491414
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3093220   0.2502261   0.3684179
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0955882   0.0605817   0.1305947
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2217899   0.1708981   0.2726816
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1440000   0.1003920   0.1876080
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2365772   0.2195142   0.2536402
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2612827   0.2370438   0.2855216
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4037451   0.3863123   0.4211779
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0807834   0.0620863   0.0994804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2579831   0.2515145   0.2644516
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3101161   0.2957091   0.3245231
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2355372   0.1819640   0.2891104
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3234043   0.2634696   0.3833389
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1991525   0.1480924   0.2502127
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1089494   0.0707821   0.1471167
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392617   0.1253610   0.1531625
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2029557   0.1782002   0.2277111
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2356227   0.2205417   0.2507038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1761878   0.1705589   0.1818167
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1078103   0.0979894   0.1176312
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1450980   0.1017849   0.1884112
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606965   0.1446374   0.1767556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1291161   0.1097606   0.1484716
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0782609   0.0596958   0.0968259
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638036   0.1576801   0.1699271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2472801   0.2337480   0.2608122


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.2057704   0.6927636   2.0986703
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.4119590   0.8382435   2.3783401
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.2602593   0.7261579   2.1872013
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.3991502   0.9434938   2.0748639
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.2420973   0.8205314   1.8802519
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.0477692   0.6704067   1.6375435
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.2810414   0.7593545   2.1611343
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         0.7043973   0.3693108   1.3435179
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         1.3120793   0.7780608   2.2126190
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         1.0000000   0.3387470   2.9520560
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         0.7981221   0.2549050   2.4989660
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         1.5692308   0.5905794   4.1696087
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.1449631   0.5819849   2.2525335
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3097334   0.6845682   2.5058156
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.9269467   0.4497082   1.9106391
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.4000000   0.4681641   4.1865664
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         2.0322581   0.7352592   5.6171658
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         2.8451613   1.0883485   7.4378221
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.1221141   0.8686881   1.4494730
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3604128   1.0869597   1.7026602
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0824121   0.8366136   1.4004266
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9902585   0.8205178   1.1951135
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8771827   0.7111446   1.0819874
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0162643   0.8405965   1.2286430
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9286985   0.7482335   1.1526896
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9765880   0.7828899   1.2182099
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8824282   0.7027973   1.1079716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9148084   0.7534464   1.1107285
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9833385   0.7970055   1.2132346
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9777512   0.7997472   1.1953746
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9041745   0.7668598   1.0660770
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9670415   0.8245881   1.1341049
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9491092   0.8077757   1.1151712
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2136149   0.9935636   1.4824025
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0832911   0.8843374   1.3270044
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0650734   0.8726653   1.2999043
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2042295   1.0809872   1.3415225
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0586742   0.9363098   1.1970301
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1279402   1.0207524   1.2463836
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.8366011   1.3502532   5.9591087
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3020657   1.0660043   4.9713744
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7134798   0.7581722   3.8724886
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0781357   1.0164870   1.1435233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0259539   0.9684897   1.0868278
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0258249   0.9678710   1.0872490
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2836346   1.1318554   1.4557671
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2349078   1.0818475   1.4096231
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0912409   0.9562025   1.2453499
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0144186   0.5122998   2.0086777
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         0.9859932   0.4985792   1.9499060
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.2200048   0.6435377   2.3128586
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.3878012   0.7564355   2.5461421
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.5537961   0.8581763   2.8132707
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.4157160   0.7702405   2.6021115
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.0000000   0.5382914   1.8577300
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         0.5333333   0.2444457   1.1636306
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         0.6000000   0.2848341   1.2638937
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3058036   0.5166174   3.3005526
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         0.8705358   0.3088113   2.4540308
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.8705358   0.3088113   2.4540308
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.1799661   0.8631675   1.6130358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4790480   1.1179254   1.9568240
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1515958   0.8385135   1.5815762
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9178637   0.7343733   1.1472010
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8959342   0.7027198   1.1422734
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0165143   0.8164527   1.2655986
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9993110   0.7197597   1.3874386
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7159768   0.4927658   1.0402971
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8428283   0.5901172   1.2037602
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0153902   0.7810278   1.3200775
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7513651   0.5462169   1.0335628
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9937366   0.7537161   1.3101914
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9346751   0.7405097   1.1797518
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0309067   0.8212869   1.2940285
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0468077   0.8327386   1.3159067
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3955058   1.0387279   1.8748283
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9189585   0.6482060   1.3028031
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0055921   0.7301289   1.3849819
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0262674   0.9024160   1.1671167
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9596668   0.8303030   1.1091860
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9893718   0.8817265   1.1101590
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1582089   1.0812838   1.2406066
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1047682   1.0310383   1.1837705
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0857008   1.0141345   1.1623174
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.0662340   0.8762531   1.2974046
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.0794120   0.8793341   1.3250144
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0837657   0.8959301   1.3109820
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.5024631   0.6118479   3.6894710
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         2.2857143   1.0108353   5.1684874
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.4523810   0.5907242   3.5708890
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.5342324   0.8681210   2.7114530
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.1948764   0.6431862   2.2197765
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.8769509   0.4425986   1.7375630
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         1.3563218   0.5006373   3.6745339
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         0.8333333   0.2683774   2.5875671
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         2.8333333   1.1992816   6.6938220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.4062500   0.5701159   3.4686613
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.6875000   0.7094491   4.0138976
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1250000   0.4330240   2.9227598
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.5654498   0.9425743   2.5999365
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5958534   0.9715456   2.6213367
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2498929   0.7333771   2.1301897
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9391563   0.6410677   1.3758525
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.7485707   0.4929144   1.1368264
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8664553   0.5839401   1.2856539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.8244905   0.4916278   1.3827220
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7760157   0.4599089   1.3093906
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9299392   0.5620212   1.5387087
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7261476   0.5511431   0.9567214
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.1204468   0.8581430   1.4629277
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8862123   0.6739363   1.1653507
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0231033   0.8103088   1.2917795
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9725151   0.7679953   1.2314993
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9830232   0.7735598   1.2492047
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4093400   0.9313021   2.1327550
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4938517   1.0071015   2.2158570
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1152352   0.7268421   1.7111688
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6012225   1.3406605   1.9124257
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2867089   1.0542638   1.5704036
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3792240   1.1636680   1.6347093
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.6938773   1.2705852   5.7115218
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3265304   1.0775899   5.0230089
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.5837562   0.6918491   3.6254778
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2817322   1.1545085   1.4229757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1324358   1.0157872   1.2624799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0878910   0.9763862   1.2121297
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4292027   1.2240554   1.6687319
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3695321   1.1612672   1.6151479
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1292041   0.9533695   1.3374688


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0611287   -0.0452426   0.1675000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0841528   -0.0283268   0.1966324
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0175187   -0.0847825   0.1198198
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0073529   -0.0518605   0.0665664
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0231564   -0.0626080   0.1089208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0646349    0.0004450   0.1288248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0763714   -0.0104234   0.1631663
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0278358   -0.1087099   0.0530383
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0191378   -0.0676081   0.0293324
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0088592   -0.0384801   0.0207617
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0289032   -0.0890003   0.0311939
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0174865   -0.0063894   0.0413624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0358643    0.0117059   0.0600228
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0393087    0.0132339   0.0653835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0075389   -0.0018269   0.0169047
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0419189    0.0182450   0.0655929
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0064466   -0.0894933   0.1023866
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0912969   -0.0075849   0.1901787
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0550847   -0.1489240   0.0387545
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0012571   -0.0641197   0.0666339
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0843595   -0.0039565   0.1726755
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0262031   -0.1047565   0.0523504
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0333785   -0.0909777   0.0242207
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0070149   -0.0315717   0.0175419
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0021345   -0.0558267   0.0515577
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0111874   -0.0198797   0.0422545
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0030084   -0.0202928   0.0142761
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0137865    0.0063987   0.0211744
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0061328   -0.0070738   0.0193394
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0644126   -0.0098997   0.1387248
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0333206   -0.0629569   0.1295982
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0514966   -0.0199428   0.1229360
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0339869   -0.0362597   0.1042336
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0671910   -0.0034390   0.1378209
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0455397   -0.1270490   0.0359697
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0219273   -0.0793570   0.0355024
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0159470   -0.0442955   0.0124016
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0028502   -0.0709615   0.0652611
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0220591   -0.0020245   0.0461427
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0632849    0.0385848   0.0879850
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0365942    0.0106304   0.0625580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0162480    0.0062734   0.0262225
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0470740    0.0241175   0.0700305


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.1761088   -0.1953731   0.4321465
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1734729   -0.0956069   0.3764670
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0566357   -0.3394629   0.3356022
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0769231   -0.8048615   0.5279023
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1044071   -0.3788439   0.4182905
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.4488536   -0.1993803   0.7467339
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1249410   -0.0300499   0.2566104
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0424263   -0.1733421   0.0738825
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0544572   -0.2017750   0.0748018
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0374474   -0.1705187   0.0804957
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0489570   -0.1558839   0.0480785
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0669255   -0.0287185   0.1536771
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0888292    0.0270758   0.1466630
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4865940    0.0711724   0.7162168
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0292226   -0.0077629   0.0648507
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1351718    0.0552100   0.2083660
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0273700   -0.4786076   0.3602027
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2822996   -0.0977499   0.5307731
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.2765957   -0.8436894   0.1160677
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0115385   -0.8138550   0.4613372
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1633911   -0.0273092   0.3186915
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0481760   -0.2030660   0.0867725
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1290880   -0.3754667   0.0731585
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0503717   -0.2423085   0.1119108
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0056754   -0.1590613   0.1274120
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0551225   -0.1109790   0.1963903
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0127677   -0.0888549   0.0580027
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0782490    0.0353472   0.1192429
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0568853   -0.0746281   0.1723040
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.3595120   -0.2080619   0.6604273
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1223492   -0.3121599   0.4129748
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.3361582   -0.3232314   0.6669623
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.2342342   -0.4339632   0.5910654
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2531538   -0.0636977   0.4756224
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1470178   -0.4428533   0.0881611
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1362150   -0.5534721   0.1689683
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0992366   -0.2905685   0.0637295
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0060273   -0.1608867   0.1281743
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1708470   -0.0368205   0.3369202
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2373395    0.1397388   0.3238670
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4675926    0.0389644   0.7050498
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0991917    0.0363803   0.1579089
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1903672    0.0921297   0.2779748

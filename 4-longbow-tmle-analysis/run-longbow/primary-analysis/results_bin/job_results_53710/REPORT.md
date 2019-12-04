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

agecat        studyid                    country                        hhwealth_quart    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       57     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        4     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       56     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        4     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       56     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        5     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       52     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        8     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       51     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       51     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       53     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       51     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       57     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        2     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       52     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        8     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       49     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       53     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        5     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       57     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        2     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       54     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       59     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       57     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        2     236
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       66     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        2     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       68     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       70     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       64     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       64     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       59     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       59     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       60     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        4     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       62     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       61     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        2     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       60     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       58     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        4     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       86     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       10     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       66     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       60     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       22     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       67     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       63     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       42     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       74     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       28     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       66     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       37     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      164     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       11     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      161     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       13     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      171     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        5     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      162     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       13     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      549    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       44    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      675    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       44    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      452    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       31    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      551    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       38    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      136     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       34     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      123     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       51     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      124     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       48     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      126     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       44     686
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      442    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1       34    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      229    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       15    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      242    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       16    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      257    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       28    1263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      743    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       97    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      590    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       91    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      473    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       67    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      856    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      127    3044
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0      215     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        2     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      201     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        3     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      196     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     6764   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      364   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     6016   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      470   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     6160   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      411   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     6348   26932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      399   26932
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1282    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       68    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1266    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      106    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1259    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       85    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1278    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       83    5427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       58     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        3     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       57     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        3     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       58     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        3     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       53     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        7     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       52     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       51     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       53     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       51     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       57     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        2     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       55     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       50     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        8     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       54     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        4     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       57     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       55     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        4     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       59     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       58     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        1     236
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       67     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       68     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       71     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       65     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        0     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       65     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       61     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        3     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       63     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       63     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        1     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       60     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       61     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        1     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       89     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       76     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       62     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       74     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       16     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       71     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       29     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       67     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       38     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       77     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       25     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       69     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       34     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      169     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      162     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       12     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      173     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        3     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      167     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        8     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      572    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       21    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      694    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       25    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      470    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       13    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      570    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      159     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       11     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      154     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       20     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      148     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       24     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      146     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       24     686
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      340    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1       29    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      184    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       12    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      194    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1        8    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      234    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       14    1015
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      765    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       75    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      633    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       47    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      513    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       27    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      921    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1       62    3043
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       73     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       68     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     6845   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      254   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     6153   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      313   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     6261   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      280   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     6465   26835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      264   26835
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1243    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       28    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1222    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       32    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1238    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       25    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1269    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       26    5083
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       60     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       57     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       59     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       59     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    0       52     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    0       52     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    0       51     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    0       51     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       59     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       56     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       57     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       57     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       59     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       57     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       59     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       58     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        1     235
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       66     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0       68     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0       70     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0       63     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       62     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       62     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       60     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        4     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       61     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        3     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       62     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       57     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       62     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       59     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        3     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       91     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       78     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       13     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       91     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       83     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1        8     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       94     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1        6     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       97     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1        8     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       96     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1        6     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       97     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1        6     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      133     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1        5     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      159     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1        1     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      163     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        2     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      147     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        5     615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      464    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       24    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      588    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      388    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       19    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      487    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      123     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       25     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      112     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       34     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      126     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       29     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      117     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       24     590
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      428    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1        5    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      222    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1        3    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      233    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1        8    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      241    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       14    1154
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      748    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       23    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      552    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       54    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      464    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       40    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      857    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1       71    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0      214     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        2     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      193     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        3     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      193     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     5009   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      116   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3529   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      163   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3897   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      136   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     4302   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      137   17289
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1305    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       42    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1295    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       76    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1283    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       61    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1302    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       59    5423


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




# Results Detail

## Results Plots
![](/tmp/d8134493-09ef-47d8-8fb8-b0ea439ca0e5/47d22527-9ea1-4183-af66-ce2f6c25e23e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8134493-09ef-47d8-8fb8-b0ea439ca0e5/47d22527-9ea1-4183-af66-ce2f6c25e23e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8134493-09ef-47d8-8fb8-b0ea439ca0e5/47d22527-9ea1-4183-af66-ce2f6c25e23e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8134493-09ef-47d8-8fb8-b0ea439ca0e5/47d22527-9ea1-4183-af66-ce2f6c25e23e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1004761   0.0404232   0.1605290
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2749326   0.1806692   0.3691960
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3756458   0.2736065   0.4776852
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2365278   0.1478052   0.3252504
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3316874   0.2399474   0.4234273
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4035701   0.3110286   0.4961115
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2700571   0.1846818   0.3554325
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3749106   0.2823196   0.4675015
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0628571   0.0268723   0.0988420
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0747126   0.0356178   0.1138075
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0284091   0.0038466   0.0529716
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0742857   0.0354053   0.1131661
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0729619   0.0522476   0.0936761
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0611484   0.0436194   0.0786774
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0660120   0.0435386   0.0884853
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0636711   0.0440099   0.0833323
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1975939   0.1380862   0.2571015
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2813707   0.2155392   0.3472023
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2730739   0.2082550   0.3378927
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2548300   0.1905356   0.3191244
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0717881   0.0488775   0.0946987
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0645644   0.0341634   0.0949655
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0633129   0.0338782   0.0927476
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0981436   0.0632633   0.1330239
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1133986   0.0943926   0.1324045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1280322   0.1041489   0.1519156
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1246807   0.0970654   0.1522960
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1325267   0.1125184   0.1525350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0540929   0.0480461   0.0601398
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0654170   0.0588059   0.0720280
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0621366   0.0554715   0.0688017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0601370   0.0542660   0.0660081
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0491344   0.0349305   0.0633383
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0737003   0.0590604   0.0883402
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0658279   0.0522824   0.0793735
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0629240   0.0490002   0.0768478
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0631579   0.0141773   0.1121385
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1555556   0.0805755   0.2305357
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3333333   0.2373952   0.4292715
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1777778   0.0986824   0.2568731
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2840474   0.1955282   0.3725665
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3502526   0.2606617   0.4398435
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2455227   0.1619504   0.3290950
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3313953   0.2427926   0.4199979
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0351578   0.0203732   0.0499425
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0347458   0.0212991   0.0481924
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0271737   0.0125644   0.0417830
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0323333   0.0179837   0.0466830
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0658658   0.0284134   0.1033182
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1143948   0.0669583   0.1618312
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1367269   0.0846883   0.1887656
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1407213   0.0876312   0.1938114
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0785908   0.0511206   0.1060609
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0612245   0.0276447   0.0948042
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0396040   0.0126960   0.0665119
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0564516   0.0277136   0.0851896
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0859422   0.0668127   0.1050717
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0704325   0.0513101   0.0895549
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0504063   0.0319082   0.0689044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0641954   0.0490209   0.0793698
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0370303   0.0319373   0.0421232
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0442810   0.0389075   0.0496545
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0434445   0.0378468   0.0490421
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0402418   0.0353384   0.0451452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0213155   0.0122859   0.0303452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0253738   0.0160373   0.0347103
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0200165   0.0113267   0.0287062
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0196608   0.0101884   0.0291332
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0600000   0.0133966   0.1066034
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0761905   0.0253833   0.1269977
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0588235   0.0131053   0.1045418
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129643   0.1035405
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0490142   0.0297509   0.0682776
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0341487   0.0196980   0.0485995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0475303   0.0267565   0.0683041
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0375463   0.0209038   0.0541888
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1697795   0.1090304   0.2305285
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2251378   0.1575513   0.2927242
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1953298   0.1326421   0.2580176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1732250   0.1107898   0.2356601
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0301447   0.0181224   0.0421670
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0915588   0.0687057   0.1144120
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0781980   0.0547277   0.1016683
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0748244   0.0578213   0.0918276
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0244914   0.0195753   0.0294076
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0394868   0.0327710   0.0462027
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0329427   0.0264815   0.0394039
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0310048   0.0256759   0.0363336
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0318949   0.0202471   0.0435428
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0542155   0.0408678   0.0675632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0453399   0.0342830   0.0563968
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0435783   0.0316123   0.0555442


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.7362983   1.3736966    5.4504964
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.7386584   1.9393939    7.2071833
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.3540701   1.1620911    4.7686847
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2167181   0.8504602    1.7407082
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8141918   0.5359697    1.2368391
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1303130   0.7817763    1.6342367
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1886102   0.5472702    2.5815295
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.4519628   0.1602357    1.2748120
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.1818182   0.5440987    2.5669870
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8380877   0.5602319    1.2537504
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9047462   0.5810664    1.4087300
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8726626   0.5739316    1.3268827
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4239852   0.9754519    2.0787634
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3819959   0.9468750    2.0170692
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2896654   0.8731591    1.9048498
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.8993754   0.5099149    1.5862963
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8819410   0.5021049    1.5491185
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3671294   0.8482933    2.2032978
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1290463   0.8863292    1.4382304
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0994908   0.8374575    1.4435120
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1686804   0.9415088    1.4506649
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2093438   1.0446957    1.3999411
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1487014   0.9932984    1.3284175
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1117352   0.9650746    1.2806835
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4999736   1.0509887    2.1407660
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3397528   0.9387275    1.9120965
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2806507   0.8847738    1.8536560
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.4629630   0.9883186    6.1378857
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         5.2777778   2.3077985   12.0699179
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.8148148   1.1512081    6.8824939
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2330781   0.8266529    1.8393228
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8643723   0.5457250    1.3690768
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1666901   0.7760153    1.7540450
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9882787   0.5580067    1.7503283
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7729052   0.3905271    1.5296826
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9196614   0.4989575    1.6950884
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.7367858   0.8596432    3.5089268
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         2.0758415   1.0479798    4.1118331
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         2.1364859   1.0796750    4.2277279
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.7790289   0.4065347    1.4928270
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.5039263   0.2347136    1.0819218
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7182981   0.3873644    1.3319556
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8195329   0.5772680    1.1634702
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.5865136   0.3819713    0.9005866
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.7469595   0.5404144    1.0324456
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1958063   0.9980584    1.4327345
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1732155   0.9867472    1.3949211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0867266   0.9217482    1.2812335
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1903889   0.6758948    2.0965182
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9390553   0.5115331    1.7238861
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9223683   0.4802032    1.7716736
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2698413   0.4562028    3.5346053
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9803922   0.3267370    2.9417201
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.3235108    2.9136456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6967105   0.3910157    1.2413968
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9697246   0.5387085    1.7455930
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7660283   0.4236116    1.3852296
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3260601   0.8310576    2.1159007
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1504916   0.7114006    1.8605984
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0202939   0.6138726    1.6957913
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.0373109   1.8975009    4.8617936
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.5940879   1.5746528    4.2735083
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.4821746   1.5684711    3.9281505
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6122703   1.2547114    2.0717238
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3450686   1.0172822    1.7784735
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2659428   0.9655365    1.6598141
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.6998153   1.0870717    2.6579406
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4215390   0.9122735    2.2150955
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3663061   0.8602739    2.1699976


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1461727    0.0857265    0.2066189
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0097760   -0.0702205    0.0897725
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0028571   -0.0337992    0.0280849
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0071061   -0.0247451    0.0105328
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0604236    0.0077107    0.1131366
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0018461   -0.0163934    0.0200856
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0120942   -0.0040407    0.0282291
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0069497    0.0016720    0.0122274
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0138839    0.0012698    0.0264979
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1189073    0.0667615    0.1710531
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0232697   -0.0538030    0.1003424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0024397   -0.0150998    0.0102203
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0492946    0.0134289    0.0851603
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0165218   -0.0371734    0.0041297
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0166028   -0.0322023   -0.0010032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0043709   -0.0000593    0.0088011
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0005220   -0.0073768    0.0084208
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0034146   -0.0374543    0.0442835
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0077207   -0.0240774    0.0086360
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0200510   -0.0334050    0.0735071
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0367830    0.0245096    0.0490565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0074364    0.0030572    0.0118156
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0119922    0.0015350    0.0224494


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.5926349    0.2870586    0.7672371
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0286298   -0.2362889    0.2367803
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0476190   -0.7136457    0.3595492
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1079048   -0.4104201    0.1297252
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2341843    0.0007111    0.4131089
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0250715   -0.2568212    0.2437384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0963738   -0.0411276    0.2157153
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1138498    0.0234282    0.1958992
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2203148   -0.0088321    0.3974131
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.6531029    0.2762967    0.8337197
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0757189   -0.2124956    0.2954237
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0745680   -0.5399017    0.2501493
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.4280515    0.0330390    0.6616977
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.2661849   -0.6400766    0.0224700
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2394417   -0.4832497   -0.0357094
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1055742   -0.0075637    0.2060080
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0239027   -0.4139044    0.3261455
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0538462   -0.8692000    0.5210747
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1869712   -0.6545331    0.1484603
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1056260   -0.2248896    0.3469577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.5495932    0.3462517    0.6896875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2329119    0.0841546    0.3575071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2732509   -0.0094158    0.4767625

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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        hhwealth_quart    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       55     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        6     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       51     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        9     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       46     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1       15     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       51     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        9     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       52     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       53     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       52     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       50     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        1     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       49     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1       10     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       45     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1       15     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       43     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1       15     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       45     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1       13     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       55     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        4     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       55     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        4     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       56     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        3     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       48     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1       11     236
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0       65     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0       65     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0       70     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0       61     272
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        4     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       60     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       59     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       56     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       60     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        4     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       60     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        3     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       59     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        4     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       55     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        7     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       53     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        9     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       76     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       75     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       24     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       83     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       17     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       82     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       23     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       82     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       20     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       87     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       16     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      148     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       27     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      156     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       18     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      159     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       17     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      147     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       28     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      548    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       45    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      691    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       28    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      461    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      565    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       24    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      118     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       52     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      120     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       54     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      119     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       53     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      127     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       43     686
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       51     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        1     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       57     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       51     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        1     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      434    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       42    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      212    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       32    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      222    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       36    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      251    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       34    1263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      753    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       87    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      511    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      170    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      439    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      101    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      781    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      202    3044
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      212     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        5     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      187     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       17     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      187     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       12     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      189     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        8     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6646   26899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      479   26899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     5748   26899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      721   26899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     5934   26899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      626   26899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6182   26899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      563   26899
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1206    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      144    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1082    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      290    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1098    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      245    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1164    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      197    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       60     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        1     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       56     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        4     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       59     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       58     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        2     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       52     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       53     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       53     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       51     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       57     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        2     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       54     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        6     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       53     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       53     235
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        5     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       56     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       56     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       57     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       59     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0     236
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0       68     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0       68     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0       71     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0       64     272
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        1     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       62     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        3     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       64     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       64     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       63     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        1     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       60     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        2     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       61     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        1     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       86     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       87     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       81     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       83     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        7     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       95     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4               1        5     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1               0       99     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1               1        6     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       92     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2               1        9     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       98     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3               1        5     409
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      169     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      165     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        9     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      173     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        3     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      163     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       12     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      583    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       10    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      713    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        6    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      483    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      586    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        3    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      159     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       11     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      163     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       11     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      166     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        6     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      162     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        8     686
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        0     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      363    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1        6    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      190    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1        5    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      200    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        2    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      242    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1        6    1014
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      827    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       13    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      658    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       22    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      527    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       13    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      959    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       24    3043
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0       73     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0       68     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        0     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6891   26792
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      202   26792
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     6126   26792
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      321   26792
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     6248   26792
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      281   26792
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6465   26792
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      258   26792
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1246    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       25    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1210    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       43    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1221    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       39    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1268    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       27    5079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       55     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        6     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       51     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        6     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       46     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1       15     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       52     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        8     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       53     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       52     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       50     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       50     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       50     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        9     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       45     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1       15     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       45     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1       13     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       48     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1       10     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       57     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       56     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       58     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       48     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1       11     235
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0       64     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        3     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0       65     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        3     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0       70     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0       60     270
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        4     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       60     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        3     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       59     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        5     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       56     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        8     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       60     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        4     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       60     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       54     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       57     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        5     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       53     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        9     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       81     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       76     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       75     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       20     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       71     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       20     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       85     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       15     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       86     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       19     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       85     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       17     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       90     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       13     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      114     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       23     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      148     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       12     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      148     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       17     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      129     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       23     614
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      444    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       44    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      583    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       26    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      384    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      485    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       21    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      100     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       48     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       94     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       52     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      104     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       51     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      100     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       41     590
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        1     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       57     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1        2     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        1     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      396    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       37    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      194    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       31    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      205    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       36    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      225    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       29    1153
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      690    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       80    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      442    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      164    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      407    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       97    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      733    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      195    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      211     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        5     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      179     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       17     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      184     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       12     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      189     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        8     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4825   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      299   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3221   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      462   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3634   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      394   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     4092   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      344   17271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1215    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      132    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1104    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      267    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1117    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      226    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1185    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      176    5422


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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




# Results Detail

## Results Plots
![](/tmp/c8009a1d-1641-4c25-b9fc-f6d37171a436/d8f9940b-b28a-43c8-9b8e-ea3221a77a07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8009a1d-1641-4c25-b9fc-f6d37171a436/d8f9940b-b28a-43c8-9b8e-ea3221a77a07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8009a1d-1641-4c25-b9fc-f6d37171a436/d8f9940b-b28a-43c8-9b8e-ea3221a77a07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8009a1d-1641-4c25-b9fc-f6d37171a436/d8f9940b-b28a-43c8-9b8e-ea3221a77a07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.0983607   0.0234731   0.1732482
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1500000   0.0594629   0.2405371
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2459016   0.1376145   0.3541888
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1500000   0.0594629   0.2405371
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1619989   0.0628454   0.2611524
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.2382302   0.1255910   0.3508694
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2476152   0.1327130   0.3625174
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.2156902   0.1060182   0.3253623
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2029490   0.1206254   0.2852725
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1783399   0.1007084   0.2559714
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2952515   0.2052495   0.3852535
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2530866   0.1609599   0.3452134
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1792946   0.1059807   0.2526085
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2304002   0.1505389   0.3102615
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2075243   0.1300192   0.2850293
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1560625   0.0859572   0.2261679
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1529842   0.0992025   0.2067659
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1084650   0.0605895   0.1563405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0952379   0.0516140   0.1388618
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1579118   0.1033838   0.2124398
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0760928   0.0546254   0.0975601
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0388639   0.0247301   0.0529977
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0454083   0.0268947   0.0639219
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0410745   0.0251503   0.0569987
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3302987   0.2641710   0.3964264
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2775050   0.2121298   0.3428802
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3181589   0.2526280   0.3836899
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2566107   0.1943217   0.3188996
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0874122   0.0620351   0.1127893
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1315256   0.0887436   0.1743075
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1378926   0.0957165   0.1800687
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1223881   0.0841501   0.1606261
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1192475   0.0983785   0.1401166
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2409539   0.2093152   0.2725926
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1786219   0.1464396   0.2108042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1963094   0.1720097   0.2206090
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0230415   0.0030669   0.0430160
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0833333   0.0453831   0.1212835
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0603015   0.0272078   0.0933952
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130294   0.0681889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0823577   0.0744814   0.0902340
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1014833   0.0940266   0.1089400
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0908397   0.0833170   0.0983623
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0835368   0.0767128   0.0903608
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1140008   0.0951097   0.1328918
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2016959   0.1787876   0.2246043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1783937   0.1562410   0.2005463
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1467955   0.1270870   0.1665040
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0571429   0.0126911   0.1015946
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0485437   0.0069888   0.0900986
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0647059   0.0276987   0.1017131
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0632184   0.0270332   0.0994036
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0348837   0.0074426   0.0623248
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0470588   0.0152026   0.0789150
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0160089   0.0073339   0.0246839
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0343867   0.0207004   0.0480729
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0240878   0.0106337   0.0375420
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0247040   0.0146822   0.0347258
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0329729   0.0279137   0.0380321
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0461651   0.0411069   0.0512234
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0405488   0.0356797   0.0454178
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0391837   0.0348935   0.0434740
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0211758   0.0095505   0.0328012
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0324303   0.0217154   0.0431452
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0290090   0.0175752   0.0404428
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0218231   0.0122782   0.0313680
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.0983607   0.0234712   0.1732501
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1052632   0.0254256   0.1851007
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2459016   0.1376116   0.3541916
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1333333   0.0471391   0.2195276
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1525424   0.0606028   0.2444819
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.2500000   0.1402008   0.3597992
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2241379   0.1165880   0.3316878
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1724138   0.0749928   0.2698348
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1488222   0.0752780   0.2223663
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1599611   0.0851200   0.2348023
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2144086   0.1312826   0.2975346
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2077800   0.1208850   0.2946750
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1445988   0.0733899   0.2158076
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1771459   0.1028374   0.2514544
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1599444   0.0862896   0.2335992
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1252906   0.0608833   0.1896979
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1569424   0.0947173   0.2191675
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0716215   0.0311984   0.1120446
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1158801   0.0685478   0.1632124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1493867   0.0938294   0.2049440
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0889884   0.0634604   0.1145164
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0424093   0.0262742   0.0585444
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0539572   0.0318549   0.0760595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0413067   0.0238531   0.0587603
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3511875   0.2784516   0.4239233
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3211387   0.2476316   0.3946458
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3322684   0.2609781   0.4035587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2919357   0.2206799   0.3631914
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0869805   0.0607384   0.1132227
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1428048   0.0976836   0.1879261
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1502326   0.1057265   0.1947387
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1190161   0.0798989   0.1581334
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1192629   0.0972730   0.1412527
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2614969   0.2271547   0.2958391
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1859003   0.1519319   0.2198686
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2000471   0.1746382   0.2254559
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0231481   0.0030820   0.0432143
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0867347   0.0473085   0.1261609
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0612245   0.0276404   0.0948086
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130291   0.0681892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0739180   0.0656101   0.0822259
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1127448   0.1021491   0.1233405
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0927552   0.0826502   0.1028603
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0778732   0.0689571   0.0867892
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1046552   0.0864460   0.1228644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1877837   0.1659556   0.2096118
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1653339   0.1436151   0.1870527
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1297388   0.1108343   0.1486434


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2255319   0.1719836   0.2790802
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0499161   0.0411726   0.0586596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1140143   0.0964790   0.1315495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839685   0.1702020   0.1977349
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0514076   0.0362561   0.0665591
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0888137   0.0849063   0.0927211
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1614449   0.1501252   0.1727646
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236609   0.0182597   0.0290620
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396387   0.0371359   0.0421415
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562469   0.0461696   0.0663242
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1153513   0.0969046   0.1337979
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0521739   0.0368026   0.0675452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0867929   0.0821342   0.0914516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477315   0.1371478   0.1583151


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.5250000   0.5771872   4.0292385
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         2.4999999   1.0374362   6.0244667
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.5250000   0.5771872   4.0292385
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.4705667   0.6775371   3.1918052
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.5284992   0.7094338   3.2932033
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.3314302   0.6018227   2.9455627
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8787428   0.4855107   1.5904672
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4548065   0.8740192   2.4215282
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2470456   0.7247330   2.1457870
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2850368   0.7524982   2.1944500
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1574482   0.6655557   2.0128841
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8704249   0.4735252   1.5999984
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.7089950   0.4031352   1.2469115
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.6225344   0.3493274   1.1094150
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0322098   0.6304558   1.6899788
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5107442   0.3225103   0.8088412
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.5967492   0.3634803   0.9797217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5397950   0.3342640   0.8717020
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.8401638   0.6207268   1.1371754
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9632461   0.7274453   1.2754817
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7769049   0.5712450   1.0566065
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.5046594   0.9733602   2.3259630
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5774984   1.0360191   2.4019838
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.4001263   0.9147607   2.1430233
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0206196   1.6258153   2.5112961
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4979086   1.1672827   1.9221823
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6462344   1.3317641   2.0349608
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.6166667   1.3584145   9.6290769
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6170854   0.9380536   7.3014338
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7624365   0.5859301   5.3012855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2322264   1.0924499   1.3898868
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1029894   0.9797383   1.2417455
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0143169   0.8976626   1.1461309
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7692505   1.4539338   2.1529505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5648460   1.2687345   1.9300672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2876710   1.0412963   1.5923388
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1428571   0.3596332   3.6318187
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.7821782   0.6180834   5.1387223
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.2894696   3.2562863
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9770115   0.4350001   2.1943708
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.5391121   0.2038413   1.4258236
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7272727   0.2997947   1.7642930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1479739   1.0962196   4.2088206
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5046536   0.6908656   3.2770231
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5431460   0.7840601   3.0371392
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4000930   1.1652596   1.6822521
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2297600   1.0259896   1.4740010
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1883620   0.9879201   1.4294722
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5314772   0.8012708   2.9271282
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3699109   0.6959161   2.6966698
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0305658   0.5100784   2.0821624
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0701754   0.3653632   3.1346218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         2.4999999   1.0374124   6.0246047
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.3555555   0.4992800   3.6803611
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.6388889   0.7774452   3.4548502
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.4693487   0.6800584   3.1747059
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.1302682   0.4947497   2.5821264
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0748476   0.5465712   2.1137178
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4407037   0.7685865   2.7005771
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.3961631   0.7304796   2.6684817
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2250858   0.6416928   2.3388685
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1061259   0.5624568   2.1753041
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8664708   0.4246426   1.7680083
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.4563551   0.2297592   0.9064272
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7383606   0.4192164   1.3004655
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9518568   0.5545461   1.6338251
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.4765716   0.2959448   0.7674422
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6063399   0.3677296   0.9997784
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4641809   0.2784847   0.7737010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9144367   0.6758808   1.2371923
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9461282   0.7058073   1.2682762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.8312815   0.6075306   1.1374389
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6418021   1.0616672   2.5389445
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.7271979   1.1333107   2.6322990
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3683077   0.8774363   2.1337914
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1926094   1.7509588   2.7456593
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5587440   1.2043688   2.0173911
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6773625   1.3437893   2.0937398
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.7469388   1.4079441   9.9716670
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6448980   0.9481883   7.3777385
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7543147   0.5832458   5.2767121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.5252683   1.3179115   1.7652501
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2548395   1.0757345   1.4637647
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0535076   0.8995748   1.2337811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7943081   1.4613664   2.2031035
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5797962   1.2638961   1.9746527
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2396788   0.9892600   1.5534881


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0627964   -0.0074582    0.1330510
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0635330   -0.0254887    0.1525547
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0276140   -0.0445894    0.0998175
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0060712   -0.0584791    0.0706215
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0244128   -0.0700384    0.0212129
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0261767   -0.0437705   -0.0085828
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0358381   -0.0916915    0.0200153
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0266021    0.0050960    0.0481081
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0647209    0.0453432    0.0840987
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0283661    0.0079551    0.0487771
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0064560   -0.0004082    0.0133203
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0474441    0.0300858    0.0648024
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0111247   -0.0272816    0.0495309
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0122277   -0.0433663    0.0189108
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0076520   -0.0003902    0.0156942
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0066658    0.0022165    0.0111151
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0052073   -0.0048361    0.0152507
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0480829   -0.0209323    0.1170980
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0474576   -0.0352170    0.1301323
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0388454   -0.0262512    0.1039420
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0114988   -0.0508922    0.0738898
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0347926   -0.0875733    0.0179881
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0327415   -0.0536790   -0.0118040
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0257638   -0.0873721    0.0358446
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0283707    0.0058871    0.0508543
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0716203    0.0510465    0.0921941
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0290258    0.0084625    0.0495890
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0128749    0.0053522    0.0203976
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0430763    0.0262902    0.0598623


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.3896595   -0.2240431    0.6956680
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2817029   -0.2425314    0.5847584
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1197679   -0.2560886    0.3831577
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0327526   -0.3860957    0.3250340
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1898770   -0.6016323    0.1160223
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5244131   -0.9077287   -0.2181162
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1217075   -0.3286036    0.0529699
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2333223    0.0227850    0.3985001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3518046    0.2411245    0.4463422
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5517885   -0.0096188    0.8010204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0726918   -0.0079575    0.1468882
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2938719    0.1798837    0.3920169
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1820000   -0.7560322    0.6189569
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.2330065   -0.9886031    0.2354909
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3234026   -0.1052165    0.5857969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1681639    0.0476711    0.2734114
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1973722   -0.2965015    0.5031157
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.3283372   -0.3380546    0.6628457
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2372881   -0.3066459    0.5547919
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2069905   -0.2271151    0.4875264
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0736642   -0.4263073    0.3983779
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2848353   -0.7915552    0.0785650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5821029   -0.9850979   -0.2609200
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0791699   -0.2862261    0.0945546
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2459507    0.0280667    0.4149903
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3752050    0.2616982    0.4712611
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5563272    0.0006791    0.8030206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1483403    0.0578669    0.2301256
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2915849    0.1703927    0.3950729

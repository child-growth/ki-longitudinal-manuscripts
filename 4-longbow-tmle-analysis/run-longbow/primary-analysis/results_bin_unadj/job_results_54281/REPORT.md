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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/892e4418-d8dc-4714-9723-c8c17cd998b1/8f41f53f-815e-48ea-a932-8902c7295de4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/892e4418-d8dc-4714-9723-c8c17cd998b1/8f41f53f-815e-48ea-a932-8902c7295de4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/892e4418-d8dc-4714-9723-c8c17cd998b1/8f41f53f-815e-48ea-a932-8902c7295de4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/892e4418-d8dc-4714-9723-c8c17cd998b1/8f41f53f-815e-48ea-a932-8902c7295de4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.0983607   0.0234731   0.1732482
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1500000   0.0594629   0.2405371
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2459016   0.1376145   0.3541888
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1500000   0.0594629   0.2405371
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1694915   0.0735528   0.2654303
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.2500000   0.1402008   0.3597992
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2586207   0.1456900   0.3715514
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.2241379   0.1165880   0.3316878
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2083333   0.1269855   0.2896812
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1758242   0.0975065   0.2541418
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2736842   0.1839089   0.3634595
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2637363   0.1730770   0.3543955
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1700000   0.0962874   0.2437126
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2190476   0.1398403   0.2982549
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1960784   0.1189348   0.2732221
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1553398   0.0853004   0.2253792
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1542857   0.1007290   0.2078425
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1034483   0.0581655   0.1487311
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0965909   0.0529180   0.1402639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1600000   0.1056450   0.2143550
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0758853   0.0545670   0.0972037
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0389430   0.0247992   0.0530867
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0455487   0.0269501   0.0641473
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0407470   0.0247774   0.0567167
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3058824   0.2365662   0.3751985
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3103448   0.2415543   0.3791353
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3081395   0.2390864   0.3771927
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2529412   0.1875487   0.3183336
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0882353   0.0627447   0.1137258
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1311475   0.0887756   0.1735195
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1395349   0.0972370   0.1818327
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1192982   0.0816514   0.1569451
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1035714   0.0829624   0.1241805
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2496329   0.2171216   0.2821441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1870370   0.1541427   0.2199314
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2054934   0.1802301   0.2307567
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0230415   0.0030669   0.0430160
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0833333   0.0453831   0.1212835
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0603015   0.0272078   0.0933952
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130294   0.0681889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0672281   0.0605322   0.0739240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1114546   0.1036201   0.1192891
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0954268   0.0877147   0.1031390
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0834692   0.0765218   0.0904167
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1066667   0.0873728   0.1259605
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2113703   0.1875540   0.2351866
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1824274   0.1596089   0.2052459
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1447465   0.1242829   0.1652101
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0571429   0.0126911   0.1015946
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0485437   0.0069888   0.0900986
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0647059   0.0276987   0.1017131
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0632184   0.0270332   0.0994036
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0348837   0.0074426   0.0623248
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0470588   0.0152026   0.0789150
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0154762   0.0071274   0.0238250
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0323529   0.0190521   0.0456538
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0240741   0.0111439   0.0370043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0244151   0.0147656   0.0340645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0284788   0.0240948   0.0328628
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0497906   0.0443983   0.0551829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0430388   0.0378040   0.0482735
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0383757   0.0337085   0.0430430
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0196696   0.0083589   0.0309802
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0343176   0.0233002   0.0453350
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0309524   0.0190743   0.0428305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0208494   0.0112337   0.0304651
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.0983607   0.0234712   0.1732501
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1052632   0.0254256   0.1851007
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2459016   0.1376116   0.3541916
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1333333   0.0471391   0.2195276
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1525424   0.0606028   0.2444819
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.2500000   0.1402008   0.3597992
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2241379   0.1165880   0.3316878
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1724138   0.0749928   0.2698348
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1562500   0.0835202   0.2289798
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1648352   0.0885006   0.2411698
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2105263   0.1284361   0.2926165
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2197802   0.1345854   0.3049750
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1500000   0.0799298   0.2200702
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1809524   0.1072264   0.2546783
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1666667   0.0942544   0.2390789
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1678832   0.1052453   0.2305212
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0750000   0.0341546   0.1158454
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1030303   0.0566075   0.1494531
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1513158   0.0943000   0.2083316
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0901639   0.0647458   0.1155821
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0426929   0.0266327   0.0587532
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0541872   0.0321608   0.0762136
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0415020   0.0241195   0.0588844
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3243243   0.2488421   0.3998065
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3561644   0.2784229   0.4339059
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3290323   0.2550001   0.4030645
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2907801   0.2157597   0.3658006
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0854503   0.0591081   0.1117926
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1377778   0.0927226   0.1828329
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1493776   0.1043541   0.1944011
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1141732   0.0750463   0.1533002
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1038961   0.0823406   0.1254516
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2706271   0.2352477   0.3060064
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1924603   0.1580362   0.2268844
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2101293   0.1839129   0.2363457
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0231481   0.0030820   0.0432143
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0867347   0.0473085   0.1261609
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0612245   0.0276404   0.0948086
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130291   0.0681892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0583528   0.0514477   0.0652580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1254412   0.1143720   0.1365105
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0978153   0.0878421   0.1077885
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0775473   0.0691566   0.0859381
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0979955   0.0796674   0.1163237
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1947484   0.1724346   0.2170621
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1682800   0.1461907   0.1903693
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1293167   0.1101157   0.1485177


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
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.4750000   0.7205164   3.0195357
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.5258621   0.7465173   3.1188228
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.3224138   0.6296473   2.7773934
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8439560   0.4667308   1.5260654
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3136842   0.7888871   2.1875959
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2659341   0.7524572   2.1298075
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2885154   0.7326387   2.2661539
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1534025   0.6422510   2.0713667
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9137636   0.4888371   1.7080615
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.6704981   0.3835058   1.1722580
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.6260522   0.3540388   1.1070575
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0370370   0.6380531   1.6855114
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5131819   0.3242354   0.8122359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6002300   0.3656523   0.9852970
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5369553   0.3315264   0.8696774
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0145889   0.7389613   1.3930235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0073792   0.7324567   1.3854921
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.8269231   0.5863549   1.1661909
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4863388   0.9635861   2.2926887
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5813953   1.0403528   2.4038108
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3520468   0.8814245   2.0739502
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.4102486   1.9001157   3.0573392
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8058748   1.3846944   2.3551651
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.9840741   1.5702791   2.5069110
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.6166667   1.3584145   9.6290769
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6170854   0.9380536   7.3014338
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7624365   0.5859301   5.3012855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6578585   1.4666254   1.8740265
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4194492   1.2595335   1.5996684
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2415831   1.0938170   1.4093113
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.9815962   1.6077201   2.4424174
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7102569   1.3650977   2.1426881
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3569985   1.0755599   1.7120803
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1428571   0.3596332   3.6318187
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.7821782   0.6180834   5.1387223
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.2894696   3.2562863
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9770115   0.4350001   2.1943708
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.5391121   0.2038413   1.4258236
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7272727   0.2997947   1.7642930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0904973   1.0609253   4.1192144
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5555552   0.7265743   3.3303571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5775879   0.8082769   3.0791226
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.7483402   1.4460243   2.1138605
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5112567   1.2511254   1.8254739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3475199   1.1070837   1.6401740
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7447087   0.8966574   3.3948401
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5736190   0.7839726   3.1586266
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0599846   0.5038084   2.2301478
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0701754   0.3653632   3.1346218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         2.4999999   1.0374124   6.0246047
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.3555555   0.4992800   3.6803611
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.6388889   0.7774452   3.4548502
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.4693487   0.6800584   3.1747059
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.1302682   0.4947497   2.5821264
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0549451   0.5471077   2.0341682
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3473684   0.7341373   2.4728366
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.4065934   0.7675340   2.5777425
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2063492   0.6490449   2.2421845
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1111111   0.5870819   2.1028888
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8414239   0.4217486   1.6787114
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.4467391   0.2308623   0.8644799
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.6137022   0.3418974   1.1015891
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9013158   0.5303762   1.5316865
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.4735035   0.2959141   0.7576711
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6009852   0.3664613   0.9855974
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4602947   0.2778260   0.7626040
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0981735   0.7981742   1.5109297
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0145161   0.7339583   1.4023181
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.8965721   0.6334101   1.2690697
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6123724   1.0286983   2.5272179
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.7481216   1.1358753   2.6903737
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3361353   0.8426785   2.1185514
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.6047855   2.0383190   3.3286778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8524305   1.4085632   2.4361697
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.0224946   1.5876194   2.5764893
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.7469388   1.4079441   9.9716670
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6448980   0.9481883   7.3777385
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7543147   0.5832458   5.2767121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         2.1497016   1.8533971   2.4933768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.6762728   1.4372450   1.9550532
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3289384   1.1364525   1.5540264
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.9873184   1.6011171   2.4666744
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7172206   1.3558304   2.1749376
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3196179   1.0377060   1.6781163


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0627964   -0.0074582    0.1330510
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0560404   -0.0302728    0.1423536
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0222297   -0.0487852    0.0932446
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0153659   -0.0494518    0.0801835
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0257143   -0.0709901    0.0195615
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0259692   -0.0434286   -0.0085099
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0114217   -0.0713254    0.0484820
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0257790    0.0041576    0.0474003
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0803970    0.0609077    0.0998864
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0283661    0.0079551    0.0487771
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0215856    0.0159409    0.0272304
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0547782    0.0368823    0.0726741
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0111247   -0.0272816    0.0495309
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0122277   -0.0433663    0.0189108
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0081847    0.0004134    0.0159560
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0111599    0.0073199    0.0149999
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0067136   -0.0030787    0.0165059
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0480829   -0.0209323    0.1170980
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0474576   -0.0352170    0.1301323
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0314176   -0.0329336    0.0957687
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0060976   -0.0551565    0.0673516
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0457334   -0.0990681    0.0076014
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0339170   -0.0547439   -0.0130902
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0010994   -0.0642524    0.0664512
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0299009    0.0072513    0.0525506
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0869871    0.0664644    0.1075098
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0290258    0.0084625    0.0495890
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0284400    0.0222494    0.0346306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0497359    0.0327080    0.0667638


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.3896595   -0.2240431    0.6956680
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2484810   -0.2462949    0.5468321
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0964147   -0.2702615    0.3572455
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0828947   -0.3424410    0.3734681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2000000   -0.6074274    0.1041586
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5202573   -0.9008428   -0.2158724
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0387886   -0.2635027    0.1459601
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2261029    0.0144903    0.3922773
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4370153    0.3250675    0.5303949
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5517885   -0.0096188    0.8010204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2430440    0.1763700    0.3043207
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3392998    0.2208956    0.4397097
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1820000   -0.7560322    0.6189569
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.2330065   -0.9886031    0.2354909
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3459159   -0.0654223    0.5984447
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2815409    0.1778594    0.3721470
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2544653   -0.2352176    0.5500210
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.3283372   -0.3380546    0.6628457
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2372881   -0.3066459    0.5547919
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1674107   -0.2551819    0.4477255
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0390625   -0.4454894    0.3611846
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3744039   -0.8822069   -0.0036017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.6030030   -1.0032537   -0.2827225
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0033784   -0.2191052    0.1852593
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2592162    0.0390123    0.4289618
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4557085    0.3419952    0.5497704
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5563272    0.0006791    0.8030206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3276771    0.2542230    0.3938964
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3366643    0.2130527    0.4408594

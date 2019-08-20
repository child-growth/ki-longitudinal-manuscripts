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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       14      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        7      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       14      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        6      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       17      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        3      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        8      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       13      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        6      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       16      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       11      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        6      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        2      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        1      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        7      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        1      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       12      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        3      60
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      159     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       16     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      142     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       38     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      147     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       22     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      160     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       14     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      548    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       45    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      691    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       28    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      461    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      565    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       24    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      105     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       46     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       98     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       47     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6340   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      449   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     5967   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      724   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     6203   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      655   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6012   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      553   26903
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1145    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      136    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1075    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      302    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1118    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      230    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1212    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      208    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        2      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       15      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       14      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        3      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        1      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       16      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        2      60
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      168     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        7     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      168     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       12     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      162     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        7     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      170     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        4     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      583    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       10    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      713    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        6    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      483    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      586    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        3    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      146     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        5     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      144     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        7     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      144     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        6     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      144     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        6     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6570   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      189   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     6340   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      323   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     6531   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      300   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6301   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      242   26796
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1173    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       23    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1215    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       45    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1233    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       35    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1324    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       31    5079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       14      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        7      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       15      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        5      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       18      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        1      81
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       12      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        6      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       14      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        5      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       11      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        6      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        9      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        6      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        1      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       13      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        2      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        1      60
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      150     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       11     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      114     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       33     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      130     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       18     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      143     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       13     612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      444    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       44    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      583    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       26    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      384    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      485    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       21    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      105     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       44     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       97     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       52     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      100     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       47     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0       98     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       47     590
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4590   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      281   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3354   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      462   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3860   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      406   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3968   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      350   17271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1156    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      122    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1097    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      279    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1137    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      211    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1231    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      189    5422


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/a1a16436-cc12-47c7-8fcb-0790ca6726d4/c5bcccb8-7d61-4c57-b5ae-4308407c8a52/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1a16436-cc12-47c7-8fcb-0790ca6726d4/c5bcccb8-7d61-4c57-b5ae-4308407c8a52/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1a16436-cc12-47c7-8fcb-0790ca6726d4/c5bcccb8-7d61-4c57-b5ae-4308407c8a52/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1a16436-cc12-47c7-8fcb-0790ca6726d4/c5bcccb8-7d61-4c57-b5ae-4308407c8a52/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2049418   0.1239257   0.2859579
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1778381   0.1005604   0.2551158
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2893920   0.1972035   0.3815806
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2537209   0.1631272   0.3443147
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1682728   0.0940635   0.2424821
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2190646   0.1379617   0.3001675
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1950205   0.1160598   0.2739812
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1535873   0.0828423   0.2243323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0907084   0.0478747   0.1335421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2068843   0.1478306   0.2659379
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1325330   0.0803618   0.1847043
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0788828   0.0388452   0.1189203
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0753505   0.0539670   0.0967341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0386723   0.0244835   0.0528611
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0460516   0.0272854   0.0648177
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0409284   0.0250139   0.0568429
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3135783   0.2400242   0.3871324
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3457186   0.2698427   0.4215945
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3239971   0.2491927   0.3988014
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3228082   0.2486048   0.3970115
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0886011   0.0631637   0.1140385
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1315650   0.0888277   0.1743022
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1370019   0.0947340   0.1792699
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1199403   0.0821891   0.1576916
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1187596   0.0978284   0.1396907
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2422290   0.2103716   0.2740865
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1769516   0.1450303   0.2088729
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1957664   0.1715338   0.2199989
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0230415   0.0030669   0.0430160
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0833333   0.0453831   0.1212835
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0603015   0.0272078   0.0933952
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130294   0.0681889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0833930   0.0748622   0.0919239
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0950096   0.0881215   0.1018976
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0890103   0.0821832   0.0958374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0856076   0.0785425   0.0926727
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1133969   0.0931293   0.1336645
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2085475   0.1863147   0.2307803
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1676568   0.1468028   0.1885109
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1519728   0.1317312   0.1722145
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0571429   0.0126911   0.1015946
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0485437   0.0069888   0.0900986
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0331126   0.0045495   0.0616757
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0463576   0.0127936   0.0799216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0400000   0.0086145   0.0713855
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0400000   0.0086145   0.0713855
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0159004   0.0071959   0.0246048
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0343599   0.0206824   0.0480373
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0242369   0.0107494   0.0377245
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0244355   0.0145743   0.0342968
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0330098   0.0274910   0.0385286
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0424148   0.0382759   0.0465537
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0410465   0.0365907   0.0455024
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0386329   0.0342107   0.0430551
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0214486   0.0100444   0.0328528
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0334453   0.0219794   0.0449112
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0264968   0.0168870   0.0361067
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0234336   0.0138194   0.0330478
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1609038   0.0892724   0.2325352
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1711014   0.0960425   0.2461602
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2237637   0.1402601   0.3072673
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2144633   0.1294104   0.2995162
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1428974   0.0719426   0.2138523
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1732861   0.0987700   0.2478022
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1602797   0.0872333   0.2333262
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1230401   0.0582441   0.1878361
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0713402   0.0328209   0.1098595
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2066328   0.1406556   0.2726101
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1305056   0.0776591   0.1833521
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0877382   0.0445255   0.1309509
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0901082   0.0646491   0.1155673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0426727   0.0266195   0.0587259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0555167   0.0333721   0.0776612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0420045   0.0246123   0.0593968
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3028781   0.2297392   0.3760170
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3379495   0.2616895   0.4142095
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3289992   0.2528225   0.4051759
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3349003   0.2592405   0.4105602
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0875174   0.0612149   0.1138199
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1407686   0.0953991   0.1861380
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1479372   0.1034156   0.1924587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1163977   0.0775874   0.1552081
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1220162   0.0999826   0.1440498
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2640369   0.2292446   0.2988291
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1837954   0.1498732   0.2177176
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1994000   0.1740195   0.2247804
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0231481   0.0030820   0.0432143
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0867347   0.0473085   0.1261609
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0612245   0.0276404   0.0948086
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130291   0.0681892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0724686   0.0639257   0.0810115
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1068056   0.0969260   0.1166852
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0895087   0.0805737   0.0984436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0817574   0.0727406   0.0907741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1011461   0.0819649   0.1203274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1945731   0.1733064   0.2158399
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1543443   0.1338536   0.1748349
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1365744   0.1179853   0.1551636


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1289398   0.1040599   0.1538198
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0499161   0.0411726   0.0586596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1140143   0.0964790   0.1315495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839685   0.1702020   0.1977349
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0514076   0.0362561   0.0665591
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885031   0.0846269   0.0923794
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1614449   0.1501252   0.1727646
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236609   0.0182597   0.0290620
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393342   0.0368494   0.0418190
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1225490   0.0965478   0.1485502
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562469   0.0461696   0.0663242
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1153513   0.0969046   0.1337979
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0521739   0.0368026   0.0675452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0867929   0.0821342   0.0914516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477315   0.1371478   0.1583151


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8677493   0.4841360   1.5553249
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4120691   0.8499800   2.3458661
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2380144   0.7289252   2.1026569
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3018419   0.7322836   2.3143934
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1589541   0.6368044   2.1092418
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9127277   0.4819394   1.7285822
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.2807622   1.3136573   3.9598425
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.4610890   0.7899015   2.7025914
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8696303   0.4344041   1.7409062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5132315   0.3228585   0.8158576
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6111646   0.3719542   1.0042154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5431732   0.3356729   0.8789422
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1024953   0.7998579   1.5196399
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0332254   0.7440925   1.4347071
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0294340   0.7417754   1.4286460
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4849137   0.9632200   2.2891640
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5462782   1.0151734   2.3552393
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3537117   0.8846138   2.0715656
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0396593   1.6393755   2.5376796
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4899988   1.1600565   1.9137828
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6484262   1.3321656   2.0397681
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.6166667   1.3584145   9.6290769
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6170854   0.9380536   7.3014338
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7624365   0.5859301   5.3012855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1392987   1.0068702   1.2891448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0673594   0.9441643   1.2066292
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0265560   0.9057599   1.1634619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8390931   1.5008430   2.2535757
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4784955   1.1880911   1.8398834
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3401848   1.0760802   1.6691091
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1428571   0.3596332   3.6318187
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.7821782   0.6180834   5.1387223
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.2894696   3.2562863
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4000000   0.4539741   4.3174272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2080000   0.3763957   3.8769417
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2080000   0.3763957   3.8769417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1609475   1.0980155   4.2528488
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5243002   0.6983892   3.3269287
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5367903   0.7783345   3.0343310
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2849154   1.0650552   1.5501616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2434647   1.0266457   1.5060739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1703461   0.9655855   1.4185279
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5593273   0.8245132   2.9490148
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2353661   0.6454224   2.3645435
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0925492   0.5678846   2.1019476
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0633768   0.5732370   1.9726051
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3906677   0.7767150   2.4899180
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.3328666   0.7343025   2.4193483
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2126605   0.6282816   2.3405836
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1216417   0.5719000   2.1998253
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8610379   0.4169966   1.7779192
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.8964427   1.5530616   5.4018338
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.8293414   0.9339167   3.5832851
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2298562   0.5935741   2.5482011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.4735721   0.2958964   0.7579360
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6161112   0.3779181   1.0044320
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4661568   0.2823139   0.7697184
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1157937   0.8032033   1.5500380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0862430   0.7775896   1.5174119
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1057265   0.7952475   1.5374223
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6084635   1.0358546   2.4976042
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.6903742   1.1069325   2.5813363
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3299953   0.8506095   2.0795528
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1639495   1.7330397   2.7020023
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5063199   1.1655935   1.9466475
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6342093   1.3133397   2.0334725
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.7469388   1.4079441   9.9716670
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6448980   0.9481883   7.3777385
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7543147   0.5832458   5.2767121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4738187   1.2696684   1.7107944
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2351370   1.0616460   1.4369792
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1281766   0.9635541   1.3209247
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.9236837   1.5508390   2.3861658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5259533   1.2030310   1.9355556
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3502686   1.0731070   1.6990155


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0256212   -0.0451932    0.0964355
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0170930   -0.0481704    0.0823564
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0382314   -0.0010506    0.0775135
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0254344   -0.0429605   -0.0079084
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0070197   -0.0568785    0.0709180
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0254132    0.0038773    0.0469490
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0652089    0.0457831    0.0846347
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0283661    0.0079551    0.0487771
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0051101   -0.0024291    0.0126493
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0480480    0.0299648    0.0661312
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0111247   -0.0272816    0.0495309
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0067545   -0.0187647    0.0322738
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0077605   -0.0003034    0.0158244
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0063244    0.0014299    0.0112189
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0049346   -0.0048978    0.0147670
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0267638   -0.0365445    0.0900720
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0132001   -0.0489580    0.0753583
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0512088    0.0144351    0.0879825
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0338613   -0.0547283   -0.0129943
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0191558   -0.0444350    0.0827466
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0278338    0.0053192    0.0503485
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0688670    0.0482814    0.0894526
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0290258    0.0084625    0.0495890
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0143243    0.0065624    0.0220862
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0465853    0.0290688    0.0641019


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1111244   -0.2553715    0.3706247
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0922124   -0.3376719    0.3839459
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2965060   -0.0782469    0.5410107
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5095437   -0.8919537   -0.2044281
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0218957   -0.1991506    0.2021953
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2228946    0.0123116    0.3885796
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3544570    0.2433788    0.4492279
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5517885   -0.0096188    0.8010204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0577395   -0.0314999    0.1392584
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2976122    0.1765515    0.4008750
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1820000   -0.7560322    0.6189569
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1694260   -0.7881194    0.6142019
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3279885   -0.1031909    0.5906426
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1607866    0.0260171    0.2769081
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1870356   -0.2915496    0.4882805
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1426127   -0.2687079    0.4205814
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0845633   -0.4145517    0.4075689
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4178639    0.0458154    0.6448461
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.6020120   -1.0030706   -0.2812541
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0594838   -0.1601817    0.2375585
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2412964    0.0231386    0.4107341
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3607808    0.2473476    0.4571184
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5563272    0.0006791    0.8030206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1650398    0.0713819    0.2492516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3153380    0.1870153    0.4234060

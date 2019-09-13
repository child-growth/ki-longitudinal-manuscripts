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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       20      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        2      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       15      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        5      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        1      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       17      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        1      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        5      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        3      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        3      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        0      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       10      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       16      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        0      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        0      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        0      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       86     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       10     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       66     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       59     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       24     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       67     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       63     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       42     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       74     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       28     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       66     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       37     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      164     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       11     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      166     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       14     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      159     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       10     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      167     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        7     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      549    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       44    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      675    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       44    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      452    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       31    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      551    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       38    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      118     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       33     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      106     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       44     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      113     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       37     602
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
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      200     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        4     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      196     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     6442   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      350   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     6237   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      473   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     6428   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      436   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     6187   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      383   26936
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1214    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       67    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1272    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      106    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1257    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       91    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1342    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       78    5427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       21      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        1      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       17      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       15      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        4      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       14      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       15      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        2      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        0      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       10      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       16      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        0      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        0      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       89     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       76     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       61     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       72     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       18     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       71     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       29     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       67     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       38     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       77     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       25     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       69     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       34     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      165     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       10     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      174     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1        6     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      161     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        8     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      169     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        5     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      572    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       21    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      694    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       25    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      470    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       13    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      570    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      141     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      139     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       12     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      132     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       18     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      134     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       16     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     6518   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      247   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     6364   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      317   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     6549   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      293   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     6299   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      252   26839
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1168    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       28    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1229    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       32    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1243    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       28    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1332    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       23    5083
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       20      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        1      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       21      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        0      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       17      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        3      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       20      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        0      82
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       18      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        0      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       18      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        1      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       17      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        0      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        1      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        0      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       10      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        0      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        0      60
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      160     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1        1     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      140     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1        8     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      146     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        2     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      154     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        2     613
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      464    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       24    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      588    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      388    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       19    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      487    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      124     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       25     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      116     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       33     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      116     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       31     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      121     590
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
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      192     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        4     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      193     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4763   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      109   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3663   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      162   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     4123   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      148   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     4188   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      133   17289
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1238    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       40    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1301    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       76    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1283    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       65    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1363    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       57    5423


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
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/e88c8e4c-4957-48ad-ac7b-2666bea05aed/96a520a0-7a5a-45aa-8825-5dffdffdf45b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e88c8e4c-4957-48ad-ac7b-2666bea05aed/96a520a0-7a5a-45aa-8825-5dffdffdf45b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e88c8e4c-4957-48ad-ac7b-2666bea05aed/96a520a0-7a5a-45aa-8825-5dffdffdf45b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e88c8e4c-4957-48ad-ac7b-2666bea05aed/96a520a0-7a5a-45aa-8825-5dffdffdf45b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0989391   0.0387254   0.1591529
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2803422   0.1857868   0.3748977
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3841673   0.2843712   0.4839635
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2628394   0.1715960   0.3540827
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3228649   0.2320746   0.4136551
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4006227   0.3099378   0.4913076
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2722749   0.1863066   0.3582432
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3607101   0.2687040   0.4527163
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0628571   0.0268722   0.0988421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0777778   0.0386244   0.1169311
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0591716   0.0235734   0.0947698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0402299   0.0110124   0.0694474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0729452   0.0521139   0.0937765
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0612558   0.0437014   0.0788102
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0659457   0.0436984   0.0881930
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0637883   0.0440840   0.0834926
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2206882   0.1544269   0.2869495
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2679315   0.1963866   0.3394763
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2909677   0.2172415   0.3646939
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2411683   0.1709080   0.3114285
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0713227   0.0483590   0.0942864
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0627628   0.0324792   0.0930464
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0619660   0.0323297   0.0916023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0965889   0.0615998   0.1315781
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1134674   0.0944459   0.1324889
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1277626   0.1039919   0.1515332
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1218991   0.0941282   0.1496699
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1322378   0.1121044   0.1523711
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0545210   0.0481090   0.0609330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0659069   0.0597256   0.0720882
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0592748   0.0534617   0.0650879
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0597984   0.0539797   0.0656171
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0527852   0.0362228   0.0693476
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0728110   0.0581697   0.0874523
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0690680   0.0553718   0.0827642
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0571814   0.0450584   0.0693043
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0631579   0.0141773   0.1121385
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1555556   0.0805755   0.2305357
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3440860   0.2474021   0.4407700
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2000000   0.1172482   0.2827518
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2841677   0.1944991   0.3738363
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3579191   0.2703039   0.4455343
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2396478   0.1557968   0.3234988
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3335213   0.2446593   0.4223832
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0571429   0.0227281   0.0915576
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0333333   0.0070911   0.0595756
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0473373   0.0152977   0.0793769
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0287356   0.0038949   0.0535763
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0351589   0.0203631   0.0499547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0345801   0.0211686   0.0479915
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0270484   0.0125406   0.0415561
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0325396   0.0181145   0.0469647
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0665996   0.0262058   0.1069935
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0811236   0.0373422   0.1249051
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1179349   0.0656069   0.1702629
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1057308   0.0563560   0.1551057
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0785908   0.0511206   0.1060609
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0612245   0.0276447   0.0948042
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0396040   0.0126960   0.0665119
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0564516   0.0277136   0.0851896
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0854342   0.0662948   0.1045736
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0711545   0.0520684   0.0902405
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0500320   0.0316053   0.0684586
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0645496   0.0493595   0.0797397
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0387731   0.0335994   0.0439468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0448049   0.0397633   0.0498465
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0398547   0.0351148   0.0445946
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0406389   0.0357621   0.0455157
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0228476   0.0124728   0.0332225
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0255226   0.0164362   0.0346090
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0219678   0.0134125   0.0305231
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0170300   0.0083420   0.0257180
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0600000   0.0133966   0.1066034
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0761905   0.0253833   0.1269977
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0588235   0.0131053   0.1045418
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129643   0.1035405
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0493647   0.0300220   0.0687074
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0341481   0.0197495   0.0485467
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0467759   0.0262683   0.0672835
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0377346   0.0210226   0.0544465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1719956   0.1115047   0.2324865
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2146972   0.1470371   0.2823572
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2111244   0.1451188   0.2771299
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1637473   0.1028127   0.2246818
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0302326   0.0182014   0.0422639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0916927   0.0688617   0.1145238
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0784173   0.0548230   0.1020116
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0747309   0.0577006   0.0917613
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0238535   0.0188161   0.0288909
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0376527   0.0313317   0.0439737
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0326091   0.0267623   0.0384559
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0310643   0.0255980   0.0365307
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0320576   0.0183433   0.0457719
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0543792   0.0411697   0.0675887
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0478063   0.0362434   0.0593692
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0412826   0.0312050   0.0513602


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2546917   0.2104174   0.2989660
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0601719   0.0425175   0.0778263
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658557   0.0558973   0.0758141
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0736342   0.0592247   0.0880437
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254928   0.1137225   0.1372631
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609593   0.0574853   0.0644333
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0630182   0.0560941   0.0699424
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1902174   0.1500638   0.2303710
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0415473   0.0267327   0.0563618
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327181   0.0255755   0.0398607
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0930233   0.0698010   0.1162455
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0620690   0.0472181   0.0769198
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693395   0.0603122   0.0783667
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413205   0.0383441   0.0442968
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0218375   0.0173809   0.0262941
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412935   0.0325931   0.0499940
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319278   0.0290347   0.0348209
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0438871   0.0380629   0.0497114


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.8334812   1.4112165    5.6891452
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.8828651   2.0050581    7.5193041
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.6565761   1.3175750    5.3563524
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2408371   0.8672161    1.7754246
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8433091   0.5543314    1.2829334
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1172170   0.7662563    1.6289249
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.2373737   0.5773290    2.6520300
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9413663   0.4102904    2.1598619
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6400210   0.2538468    1.6136777
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8397510   0.5608132    1.2574271
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9040443   0.5814079    1.4057188
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8744686   0.5744867    1.3310931
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2140723   0.8132427    1.8124621
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3184558   0.8904091    1.9522776
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0928007   0.7190142    1.6609037
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.8799839   0.4936490    1.5686685
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8688121   0.4885052    1.5451923
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3542527   0.8346450    2.1973419
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1259848   0.8838960    1.4343789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0743093   0.8134532    1.4188160
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1654253   0.9378530    1.4482185
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2088355   1.0488708    1.3931965
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0871927   0.9403623    1.2569496
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0967957   0.9472313    1.2699759
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3793825   0.9503894    2.0020173
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3084728   0.9017240    1.8986974
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0832842   0.7377137    1.5907318
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.4629630   0.9883186    6.1378857
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         5.4480287   2.3878494   12.4300205
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         3.1666667   1.3147958    7.6268711
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2595348   0.8468969    1.8732243
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8433323   0.5274852    1.3483020
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1736775   0.7777898    1.7710682
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.5833333   0.2164902    1.5717928
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8284024   0.3347910    2.0497877
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.5028736   0.1753482    1.4421695
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9835361   0.5549168    1.7432222
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7693174   0.3890524    1.5212586
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9255000   0.5022323    1.7054859
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2180791   0.5407244    2.7439423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.7708044   0.8349021    3.7558273
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.5875584   0.7382572    3.4139073
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.7790289   0.4065347    1.4928270
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.5039263   0.2347136    1.0819218
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7182981   0.3873644    1.3319556
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8328567   0.5875745    1.1805317
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.5856195   0.3806423    0.9009776
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.7555469   0.5464440    1.0446653
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1555670   0.9838156    1.3573022
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0278952   0.8784931    1.2027055
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0481221   0.8886030    1.2362775
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1170796   0.6214107    2.0081190
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9614927   0.5282577    1.7500326
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.7453730   0.3720074    1.4934676
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2698413   0.4562028    3.5346053
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9803922   0.3267370    2.9417201
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.3235108    2.9136456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6917515   0.3889958    1.2301422
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9475568   0.5262919    1.7060191
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7644036   0.4231437    1.3808852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2482711   0.7792500    1.9995902
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2274984   0.7676232    1.9628800
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9520432   0.5708554    1.5877685
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.0329080   1.8965481    4.8501438
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.5937989   1.5750324    4.2715265
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.4718651   1.5625439    3.9103652
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.5784959   1.2181640    2.0454136
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3670574   1.0342793    1.8069063
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3022956   0.9816663    1.7276481
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.6962990   1.0348114    2.7806327
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4912632   0.9074778    2.4506011
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2877639   0.7815748    2.1217878


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1557525    0.0949503    0.2165548
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0185985   -0.0602432    0.0974403
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0026852   -0.0336252    0.0282547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0070895   -0.0248388    0.0106598
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0384480   -0.0200293    0.0969253
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0023115   -0.0159748    0.0205979
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0120254   -0.0041427    0.0281934
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0064383    0.0008539    0.0120227
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0102330   -0.0039939    0.0244600
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1270595    0.0744026    0.1797164
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0231494   -0.0548822    0.1011809
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0155956   -0.0440554    0.0128642
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0024408   -0.0151087    0.0102271
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0264236   -0.0105676    0.0634148
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0165218   -0.0371734    0.0041297
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0160948   -0.0317041   -0.0004855
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0025474   -0.0017762    0.0068710
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0010101   -0.0099612    0.0079409
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0034146   -0.0374543    0.0442835
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0080712   -0.0244964    0.0083541
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0195298   -0.0336257    0.0726853
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0366951    0.0244181    0.0489721
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0080743    0.0035692    0.0125794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0118296   -0.0000370    0.0236961


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.6115337    0.3126410    0.7804552
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0544672   -0.2070985    0.2593543
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0446258   -0.7087239    0.3613695
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1076519   -0.4122576    0.1312543
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1483698   -0.1095426    0.3463306
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0313919   -0.2515658    0.2503777
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0958252   -0.0419640    0.2153932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1056167    0.0093012    0.1925685
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1623822   -0.1004764    0.3624547
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.6679699    0.3062989    0.8410786
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0753273   -0.2170817    0.2974838
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3753695   -1.2441425    0.1570762
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0746006   -0.5402585    0.2502775
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2840538   -0.2388112    0.5862332
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.2661849   -0.6400766    0.0224700
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2321154   -0.4762284   -0.0283696
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0616495   -0.0489965    0.1606247
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0462564   -0.5468618    0.2923398
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0538462   -0.8692000    0.5210747
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1954585   -0.6646057    0.1414657
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1019697   -0.2227361    0.3404477
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.5482797    0.3449063    0.6885160
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2528923    0.0988352    0.3806129
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2695451   -0.0660488    0.4994934

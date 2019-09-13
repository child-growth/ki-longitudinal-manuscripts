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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       17      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        4      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       11      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       10      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        9      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       11      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       15      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        5      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        8      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       12      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       10      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        7      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        4      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        8      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        2      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        7      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        3      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        7      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       11      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        6      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       10      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       13      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        4      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       13      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        4      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       12      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        3      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       11      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        4      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       44     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       52     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       54     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       54     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       32     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       68     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       34     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       71     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       42     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       60     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       70     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      115     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       60     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      100     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       80     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      114     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       55     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      124     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       50     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      447    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      146    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      558    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      161    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      367    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      116    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      448    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      141    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       62     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       89     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       61     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       60     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       63     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       87     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     5173   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     1619   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     4896   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     1814   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     5034   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     1830   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     4882   26936
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     1688   26936
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      934    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      347    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      886    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      492    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      918    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      430    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     1006    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      414    5427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       13      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        8      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       14      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        6      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       17      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        3      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       12      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        9      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        7      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        7      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        3      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        2      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0       10      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        8      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       15      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        2      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       14      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        3      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       14      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       15      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        2      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       14      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        2      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       41     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       59     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       44     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       46     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       45     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       55     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       47     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       58     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       50     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       52     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       45     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       58     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      127     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       48     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      122     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       58     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      131     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       38     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      138     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       36     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      506    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       87    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      613    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      106    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      429    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       54    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      504    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       85    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0      109     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       42     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0      110     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       41     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0      100     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       50     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      105     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       45     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     5667   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     1098   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     5430   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     1251   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     5591   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     1251   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     5419   26839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     1132   26839
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0     1068    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      128    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0     1109    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      152    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0     1142    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      129    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     1216    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      139    5083
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       19      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        2      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       14      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        7      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       15      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        5      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       18      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        2      82
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       12      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        6      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       12      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        7      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        1      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       11      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        9      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        9      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        1      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        6      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       13      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        4      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       12      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        5      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       14      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        2      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       13      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        2      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       12      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        3      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       12      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        3      60
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      136     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       25     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      110     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       38     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      128     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       20     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      140     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       16     613
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      402    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       86    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      529    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       80    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      327    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       80    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      429    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       77    2010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       82     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       67     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       75     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       80     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       67     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       71     590
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     4212   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      660   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     3097   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      728   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     3535   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      736   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     3613   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      708   17289
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0     1032    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      246    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      963    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      414    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      997    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      351    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     1090    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      330    5423


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
![](/tmp/ef724a8d-1fb7-470d-8b6c-4d0722a355b9/086ee130-0ef1-460d-84bf-873bf616cdf8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ef724a8d-1fb7-470d-8b6c-4d0722a355b9/086ee130-0ef1-460d-84bf-873bf616cdf8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ef724a8d-1fb7-470d-8b6c-4d0722a355b9/086ee130-0ef1-460d-84bf-873bf616cdf8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ef724a8d-1fb7-470d-8b6c-4d0722a355b9/086ee130-0ef1-460d-84bf-873bf616cdf8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.5555556   0.3243680   0.7867431
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.6315789   0.4131363   0.8500216
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4117647   0.1761492   0.6473802
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.5882353   0.3526198   0.8238508
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5454642   0.4449663   0.6459622
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5932773   0.4903386   0.6962160
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7324032   0.6449844   0.8198220
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5886781   0.4873966   0.6899596
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6762888   0.5832469   0.7693308
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6659606   0.5773789   0.7545423
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5891056   0.4938229   0.6843884
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6731140   0.5826792   0.7635489
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3440236   0.2832234   0.4048238
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3813368   0.3192055   0.4434682
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3571941   0.2991250   0.4152633
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3129537   0.2562916   0.3696159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2458884   0.2116769   0.2800999
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2244911   0.1941404   0.2548418
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2413035   0.2033594   0.2792476
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2398225   0.2051418   0.2745031
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5896175   0.5106519   0.6685831
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5975271   0.5188804   0.6761738
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6049002   0.5257416   0.6840589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5817781   0.5020165   0.6615396
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2437203   0.2111768   0.2762637
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2963718   0.2457709   0.3469728
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2642375   0.2168869   0.3115880
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2593160   0.2146531   0.3039788
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3626718   0.3337790   0.3915646
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4432288   0.4085512   0.4779064
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3895207   0.3506810   0.4283604
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4184750   0.3897659   0.4471840
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0414747   0.0149300   0.0680193
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1176471   0.0734075   0.1618866
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0954774   0.0546222   0.1363326
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0710660   0.0351652   0.1069668
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2531629   0.2418954   0.2644305
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2567856   0.2465673   0.2670040
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2611633   0.2507648   0.2715618
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2616728   0.2510661   0.2722795
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2727627   0.2441092   0.3014163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3480972   0.3220663   0.3741281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3196248   0.2919805   0.3472692
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2947286   0.2691533   0.3203040
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3333333   0.1140095   0.5526571
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5263158   0.3002061   0.7524254
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4204843   0.3192213   0.5217473
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5053934   0.3976668   0.6131200
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6403553   0.5448256   0.7358849
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5132331   0.4075378   0.6189284
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5631572   0.4692520   0.6570625
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5283658   0.4393992   0.6173323
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5113393   0.4169933   0.6056853
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5815684   0.4904725   0.6726642
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2873119   0.2203778   0.3542460
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3201792   0.2521980   0.3881604
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2236983   0.1585679   0.2888287
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2071950   0.1450581   0.2693319
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1462941   0.1178682   0.1747201
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1475044   0.1215780   0.1734309
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1114678   0.0834822   0.1394533
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1450199   0.1164373   0.1736026
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2830504   0.2115387   0.3545621
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2739758   0.2025371   0.3454144
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3386992   0.2623667   0.4150317
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3030210   0.2297556   0.3762864
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1935561   0.1544539   0.2326583
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2649403   0.2062896   0.3235910
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1760450   0.1248461   0.2272438
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1925482   0.1444928   0.2406037
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2369402   0.2139326   0.2599478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2433533   0.2176772   0.2690294
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2281154   0.1995534   0.2566775
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2351982   0.2137017   0.2566947
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1646771   0.1556732   0.1736810
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1771822   0.1689144   0.1854499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1793045   0.1708451   0.1877638
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1799443   0.1712674   0.1886213
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1027341   0.0853525   0.1201157
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1137266   0.0984339   0.1290192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1071946   0.0920777   0.1223115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1065303   0.0924849   0.1205758
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2005521   0.1206303   0.2804739
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2975401   0.1994193   0.3956608
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3139321   0.2191080   0.4087562
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2453590   0.1544594   0.3362586
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3590193   0.2644910   0.4535476
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3337652   0.2428090   0.4247213
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2730228   0.1863826   0.3596629
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3071983   0.2180270   0.3963696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1601876   0.1041058   0.2162695
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2347528   0.1647875   0.3047182
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1351962   0.0799190   0.1904734
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1041254   0.0553797   0.1528711
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1756254   0.1426248   0.2086259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1296366   0.1031222   0.1561509
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1998908   0.1615383   0.2382432
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1570841   0.1255520   0.1886163
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4531002   0.3726793   0.5335210
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5008723   0.4199539   0.5817906
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4607739   0.3792614   0.5422864
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4910768   0.4092429   0.5729108
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1056767   0.0768835   0.1344699
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1536161   0.1058359   0.2013963
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1596424   0.1128468   0.2064380
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1193822   0.0795467   0.1592178
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2038533   0.1759639   0.2317427
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3233062   0.2861929   0.3604195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2613592   0.2227253   0.2999930
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2795598   0.2508989   0.3082207
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0416667   0.0150015   0.0683318
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1122449   0.0680248   0.1564650
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0969388   0.0554914   0.1383862
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313003   0.1006794
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1479343   0.1363933   0.1594753
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1817291   0.1684889   0.1949693
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1686702   0.1566490   0.1806914
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1644667   0.1520406   0.1768927
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1978850   0.1707248   0.2250453
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2936463   0.2685293   0.3187633
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2567458   0.2301159   0.2833757
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2341171   0.2087507   0.2594835


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5492958   0.4327362   0.6658554
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3510029   0.3155698   0.3864359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2365772   0.2195142   0.2536402
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2612827   0.2370438   0.2855216
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4037451   0.3863123   0.4211779
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0807834   0.0620863   0.0994804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580561   0.2515928   0.2645194
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3101161   0.2957091   0.3245231
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4225352   0.3068192   0.5382512
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2578797   0.2254025   0.2903568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392617   0.1253610   0.1531625
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2029557   0.1782002   0.2277111
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2356227   0.2205417   0.2507038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763106   0.1706836   0.1819376
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1078103   0.0979894   0.1176312
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1615008   0.1323460   0.1906557
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
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.1368421   0.6617609   1.9529862
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.7411765   0.3652975   1.5038222
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.0588235   0.5942652   1.8865437
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0876558   0.8443302   1.4011047
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3427154   1.0787800   1.6712255
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0792240   0.8383899   1.3892396
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9847281   0.8137045   1.1916972
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8710859   0.7047898   1.0766197
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9953056   0.8211748   1.2063609
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1084611   0.8849509   1.3884227
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0382837   0.8315545   1.2964070
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9096868   0.7206249   1.1483506
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9129797   0.7527105   1.1073739
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9813537   0.7961540   1.2096343
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9753305   0.7983521   1.1915413
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0134147   0.8398520   1.2228458
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0259197   0.8505207   1.2374904
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9867042   0.8145622   1.1952251
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2160327   0.9937038   1.4881050
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0841834   0.8800541   1.3356607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0639901   0.8703082   1.3007746
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2221210   1.0972158   1.3612453
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0740308   0.9489883   1.2155495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1538670   1.0436363   1.2757403
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.8366011   1.3502532   5.9591087
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3020657   1.0660043   4.9713744
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7134798   0.7581722   3.8724886
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0143097   0.9613302   1.0702090
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0316016   0.9757806   1.0906161
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0336141   0.9770222   1.0934841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2761907   1.1244886   1.4483585
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1718054   1.0244418   1.3403670
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0805312   0.9448390   1.2357107
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.5789474   0.7196094   3.4644833
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.2019318   0.8711335   1.6583451
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5228994   1.1475433   2.0210327
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2205761   0.8890788   1.6756739
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9382207   0.7443991   1.1825083
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9079867   0.7100318   1.1611310
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0326927   0.8250158   1.2926471
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1143959   0.8135389   1.5265135
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7785903   0.5363112   1.1303192
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7211501   0.4932438   1.0543619
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0082733   0.7762548   1.3096410
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7619429   0.5548738   1.0462865
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9912904   0.7518624   1.3069634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9679399   0.6732439   1.3916318
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1966038   0.8524725   1.6796560
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0705550   0.7543134   1.5193791
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3688040   1.0191071   1.8384960
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9095295   0.6414914   1.2895637
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9947930   0.7248882   1.3651942
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0270664   0.9029443   1.1682509
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9627553   0.8325013   1.1133891
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9926477   0.8835091   1.1152680
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0759367   1.0107129   1.1453695
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0888243   1.0208289   1.1613487
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0927100   1.0256525   1.1641517
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1069988   0.9091927   1.3478399
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.0434176   0.8528637   1.2765466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0369518   0.8546166   1.2581887
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.4836048   0.8851891   2.4865685
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5653394   0.9495588   2.5804485
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2234176   0.7114169   2.1039007
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9296581   0.6366852   1.3574433
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.7604682   0.5031209   1.1494491
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8556596   0.5777935   1.2671539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.4654865   0.9268388   2.3171782
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8439867   0.4936001   1.4430984
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6500212   0.3630252   1.1639067
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7381427   0.5600993   0.9727822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.1381658   0.8712792   1.4868039
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8944274   0.6799895   1.1764894
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1054339   0.8693101   1.4056941
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0169361   0.7915121   1.3065611
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0838152   0.8494919   1.3827740
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4536426   0.9612885   2.1981714
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5106680   1.0130260   2.2527734
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1296933   0.7348316   1.7367338
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5859750   1.3274843   1.8947998
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2820944   1.0490967   1.5668396
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3713774   1.1568892   1.6256319
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.6938773   1.2705852   5.7115218
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3265304   1.0775899   5.0230089
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.5837562   0.6918491   3.6254778
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2284446   1.1071182   1.3630670
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1401697   1.0259579   1.2670959
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1117549   0.9952998   1.2418358
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4839235   1.2632157   1.7431932
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2974495   1.0919524   1.5416195
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1830967   0.9915017   1.4117150


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0062598   -0.2060937   0.1935741
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0684768   -0.0177061   0.1546598
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0201913   -0.1013087   0.0609261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0069792   -0.0420715   0.0560300
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0093112   -0.0387986   0.0201761
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0017446   -0.0666123   0.0701014
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0175624   -0.0064554   0.0415802
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0410733    0.0170647   0.0650818
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0393087    0.0132339   0.0653835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0048932   -0.0044661   0.0142525
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0373534    0.0125662   0.0621405
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0892019   -0.1034192   0.2818230
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0985375    0.0107025   0.1863724
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0192548   -0.0996249   0.0611153
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0294322   -0.0870995   0.0282350
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0070324   -0.0314929   0.0174282
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0126307   -0.0497683   0.0750297
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0093996   -0.0216203   0.0404195
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0013175   -0.0187131   0.0160781
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0116335    0.0044289   0.0188381
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0050762   -0.0085857   0.0187381
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0648635   -0.0067577   0.1364846
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0492632   -0.1308366   0.0323102
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0013132   -0.0469178   0.0495441
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0149288   -0.0432526   0.0133949
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0197812   -0.0499171   0.0894794
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0234394   -0.0004368   0.0473157
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0627897    0.0379636   0.0876157
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0365942    0.0106304   0.0625580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0158693    0.0056505   0.0260881
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0493951    0.0250496   0.0737405


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0113960   -0.4492472   0.2941702
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1115365   -0.0411512   0.2418321
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0307748   -0.1621664   0.0857620
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0198837   -0.1303541   0.1501531
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0393581   -0.1717866   0.0781042
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0029501   -0.1196102   0.1120941
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0672160   -0.0289989   0.1544345
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1017307    0.0403356   0.1591981
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4865940    0.0711724   0.7162168
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0189617   -0.0179789   0.0545618
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1204496    0.0365705   0.1970260
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2111111   -0.4069876   0.5576751
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1898523    0.0005660   0.3432889
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0354012   -0.1942560   0.1023235
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1141317   -0.3618702   0.0885405
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0504975   -0.2416207   0.1112061
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0427172   -0.1933091   0.2320595
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0463135   -0.1193797   0.1874805
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0055914   -0.0821988   0.0655930
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0659828    0.0242239   0.1059547
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0470847   -0.0888788   0.1660711
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2443845   -0.0775063   0.4701147
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1590387   -0.4548864   0.0766491
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0081311   -0.3403264   0.2659968
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0929009   -0.2841060   0.0698335
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0418312   -0.1175383   0.1784734
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1815376   -0.0241760   0.3459321
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2354822    0.1373371   0.3224613
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4675926    0.0389644   0.7050498
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0968799    0.0324484   0.1570207
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1997535    0.0950174   0.2923682

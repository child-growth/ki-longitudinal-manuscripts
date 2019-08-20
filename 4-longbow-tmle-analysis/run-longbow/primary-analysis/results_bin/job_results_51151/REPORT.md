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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0        7      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       14      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0        6      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       15      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0        8      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       12      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0        8      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       12      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0        6      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       12      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0        9      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0        4      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       13      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0        4      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        7      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        5      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        4      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        4      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        7      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        7      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0        9      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        8      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0        6      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       11      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       10      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       10      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       13      60
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      118     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       57     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       80     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1      100     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0       95     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       74     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      102     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       72     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      361    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      232    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      498    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      221    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      310    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1      173    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      388    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      201    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       98     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       54     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       96     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4121   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2696   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     2981   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3828   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3282   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     3666   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3388   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     3250   27212
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      644    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      637    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      486    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      891    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      523    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      825    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      616    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      804    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        3      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       14      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        7      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       11      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        9      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       13      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        7      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       12      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       13      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       11      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        7      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        3      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        6      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        4      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        7      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        3      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        6      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        4      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        5      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        4      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        1      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        8      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        6      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        3      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       10      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        7      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       14      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        3      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       13      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        4      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       10      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        7      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       10      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        5      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0        9      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        6      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       14      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        1      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        6      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        9      60
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      140     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       35     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      124     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       56     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      130     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       39     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      137     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       37     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      448    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      145    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      598    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      121    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      385    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       98    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      488    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      101    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      113     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       38     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      104     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       47     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      109     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       41     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      109     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       41     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4660   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2133   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3518   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3272   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3874   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     3061   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3940   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     2688   27146
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      858    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      343    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      768    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      508    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      812    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      467    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      901    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      460    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0        7      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       11      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0        6      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        8      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0        8      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        3      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0        8      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        5      56
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0        6      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        6      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0        9      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        4      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       10      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        1      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0        4      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        6      46
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0        4      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        6      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        6      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        2      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        4      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        2      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        6      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        1      31
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        2      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        4      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        2      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        3      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        0      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        1      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        2      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        4      18
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0        9      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0        6      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        8      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0        7      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        6      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0        7      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        3      47
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        1      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        9      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0        2      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        7      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        2      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       12      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        2      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        4      39
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      105     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       22     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       53     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       44     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0       76     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       35     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0       85     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       35     455
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      276    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       87    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      396    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      100    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      244    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       75    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      318    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      100    1596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       51     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       60     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       42     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       62     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       44     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       62     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       50     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       55     426
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     2805   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      563   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     1526   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      556   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     1841   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      605   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     2063   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      562   10521
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      641    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      294    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      485    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      383    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      523    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      358    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      616    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      344    3644


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/bcf09a81-437a-4fd7-bcf7-ecfba83a8750/dbc37f70-e2ef-4300-b98f-328d4d65c86f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bcf09a81-437a-4fd7-bcf7-ecfba83a8750/dbc37f70-e2ef-4300-b98f-328d4d65c86f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bcf09a81-437a-4fd7-bcf7-ecfba83a8750/dbc37f70-e2ef-4300-b98f-328d4d65c86f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bcf09a81-437a-4fd7-bcf7-ecfba83a8750/dbc37f70-e2ef-4300-b98f-328d4d65c86f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.6666667   0.4638066   0.8695268
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7142857   0.5198819   0.9086895
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.6000000   0.3839754   0.8160246
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.6000000   0.3839754   0.8160246
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.4705882   0.2315552   0.7096213
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.6470588   0.4182021   0.8759156
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.5882353   0.3525455   0.8239251
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.5882353   0.3525455   0.8239251
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.9375000   0.8890135   0.9859865
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.9340659   0.8830091   0.9851228
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9157895   0.8598717   0.9717073
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9120879   0.8538303   0.9703456
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5047856   0.4079134   0.6016577
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6860578   0.5998088   0.7723069
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6674754   0.5786998   0.7562510
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6610560   0.5702243   0.7518878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3488776   0.2883063   0.4094489
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5015725   0.4324647   0.5706803
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.4573318   0.3856468   0.5290168
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.4200479   0.3497851   0.4903106
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3864709   0.3481596   0.4247822
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.3136252   0.2804414   0.3468090
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3575858   0.3154398   0.3997319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3383067   0.3004544   0.3761590
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6537873   0.5772972   0.7302774
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7271437   0.6551075   0.7991798
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6872961   0.6125049   0.7620873
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.6472798   0.5693139   0.7252458
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.3399846   0.2075747   0.4723946
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.3744911   0.2523844   0.4965979
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2711955   0.1528817   0.3895093
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2654198   0.1473527   0.3834869
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7341894   0.6955030   0.7728758
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7901101   0.7417014   0.8385187
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8262995   0.7813722   0.8712268
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7698938   0.7230221   0.8167655
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6062905   0.5749154   0.6376656
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7019984   0.6686296   0.7353672
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6953108   0.6590744   0.7315473
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7483213   0.7223348   0.7743078
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.6148660   0.5496942   0.6800378
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.6076017   0.5403351   0.6748683
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.6373137   0.5698860   0.7047414
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6975464   0.6329702   0.7621226
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4740885   0.4624279   0.4857491
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5156991   0.5038071   0.5275911
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5079574   0.4971187   0.5187960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4884013   0.4766675   0.5001352
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5223553   0.4921681   0.5525425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.6353680   0.6073456   0.6633905
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.6040388   0.5754404   0.6326372
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5631317   0.5331952   0.5930681
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3333333   0.1140095   0.5526571
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3157895   0.1052928   0.5262861
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.3529412   0.1241566   0.5817258
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6694347   0.5718641   0.7670054
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3854974   0.2811858   0.4898090
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.5006456   0.3991619   0.6021292
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4803782   0.3749462   0.5858101
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3975396   0.3065270   0.4885522
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4353508   0.3466185   0.5240830
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4959728   0.4047386   0.5872071
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3724098   0.2820722   0.4627475
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2234790   0.1751642   0.2717937
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2486215   0.1906150   0.3066280
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2616017   0.2041509   0.3190526
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2221148   0.1666926   0.2775369
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2405880   0.2072719   0.2739042
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1737289   0.1469696   0.2004882
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2020793   0.1669927   0.2371660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1707156   0.1407441   0.2006870
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2505551   0.1813160   0.3197941
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3143531   0.2398556   0.3888505
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2712200   0.1990955   0.3433445
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2726108   0.2009204   0.3443012
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.2426929   0.1274942   0.3578917
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2605402   0.1493811   0.3716994
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2517293   0.1370301   0.3664285
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2051574   0.0971514   0.3131635
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2876967   0.2459311   0.3294622
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3321444   0.2718256   0.3924632
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.3426940   0.2875842   0.3978038
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.3523407   0.3000399   0.4046416
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2182719   0.1942559   0.2422878
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2483808   0.2190116   0.2777500
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2467460   0.2145604   0.2789316
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2466155   0.2224026   0.2708283
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3041965   0.1971511   0.4112419
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3274102   0.2133888   0.4414316
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3681822   0.2453202   0.4910443
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3640941   0.2453108   0.4828774
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3873660   0.3769687   0.3977634
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4340400   0.4227038   0.4453763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4229372   0.4130940   0.4327803
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4054460   0.3952425   0.4156495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3119331   0.2863431   0.3375230
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3790324   0.3526988   0.4053661
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3596696   0.3350379   0.3843013
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3375258   0.3123963   0.3626553
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8125000   0.6768992   0.9481008
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8928571   0.8116295   0.9740847
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.8333333   0.7276180   0.9390487
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8367347   0.7329656   0.9405037
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1911931   0.0858704   0.2965159
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4296997   0.3032903   0.5561091
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3617024   0.2254845   0.4979203
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4700184   0.3443833   0.5956534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1814580   0.1158776   0.2470383
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4377095   0.3383829   0.5370360
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3150875   0.2271604   0.4030146
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2846437   0.2029629   0.3663246
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2404598   0.1962369   0.2846827
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2016272   0.1663436   0.2369109
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2343725   0.1875901   0.2811548
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2380636   0.1971537   0.2789736
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5384627   0.4442210   0.6327044
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5971225   0.5021422   0.6921029
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5859474   0.4916703   0.6802245
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5263241   0.4297060   0.6229423
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7310602   0.6842039   0.7779166
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7879440   0.7258534   0.8500347
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8319520   0.7761143   0.8877897
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7491662   0.6861386   0.8121937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5405552   0.5026615   0.5784489
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7061533   0.6644986   0.7478081
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6464234   0.5996378   0.6932091
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7089701   0.6759084   0.7420317
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.5672002   0.4968389   0.6375615
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.5837517   0.5099881   0.6575152
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.5932168   0.5191887   0.6672450
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6479915   0.5764756   0.7195073
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1872773   0.1723981   0.2021565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2490598   0.2288432   0.2692764
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2376416   0.2174939   0.2577894
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2125006   0.1950752   0.2299259
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3236567   0.2887166   0.3585968
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4319227   0.3949696   0.4688758
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4020686   0.3640670   0.4400702
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3603956   0.3237980   0.3969932


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6463415   0.5422228   0.7504601
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5735294   0.4551072   0.6919516
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4340974   0.3973018   0.4708930
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3468960   0.3277853   0.3660067
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7715180   0.7484902   0.7945458
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6866209   0.6701747   0.7030670
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6376989   0.6047193   0.6706785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4938998   0.4860534   0.5017461
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3521127   0.2402231   0.4640023
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2392550   0.2075826   0.2709275
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1950503   0.1791413   0.2109594
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3240116   0.2955133   0.3525098
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2391233   0.2240003   0.2542464
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3531599   0.2959376   0.4103821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108893   0.4034376   0.4183410
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2989011   0.2567922   0.3410100
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7665094   0.7380190   0.7949999
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2172797   0.2079084   0.2266510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0714286   0.7123007   1.6116217
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         0.9000000   0.5617127   1.4420183
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         0.9000000   0.5617127   1.4420183
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3750000   0.7404481   2.5533526
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.2500000   0.6545492   2.3871392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.2500000   0.6545492   2.3871392
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9963370   0.9241135   1.0742051
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9768421   0.9017212   1.0582212
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9728938   0.8961328   1.0562300
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3591075   1.0836494   1.7045855
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3222950   1.0493880   1.6661749
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.3095780   1.0348476   1.6572435
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.4376745   1.1610132   1.7802622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.3108659   1.0464542   1.6420874
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2039977   0.9541743   1.5192302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8115106   0.7029097   0.9368905
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9252594   0.7939549   1.0782791
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8753743   0.7546240   1.0154463
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1122021   0.9543395   1.2961777
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0512533   0.8959533   1.2334723
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9900465   0.8368230   1.1713254
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.1014943   0.6609716   1.8356155
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         0.7976698   0.4417353   1.4404037
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.7806817   0.4334312   1.4061376
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0761665   0.9938016   1.1653577
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1254582   1.0441814   1.2130613
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0486310   0.9688595   1.1349704
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1578582   1.0803997   1.2408700
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1468279   1.0671506   1.2324542
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2342620   1.1610665   1.3120718
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.9881856   0.8477230   1.1519219
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0365082   0.8923180   1.2039982
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1344690   0.9854872   1.3059732
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0877697   1.0575159   1.1188891
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0714400   1.0420154   1.1016955
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0301902   1.0009624   1.0602715
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2163521   1.1333025   1.3054878
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1563752   1.0739156   1.2451665
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0780625   1.0009956   1.1610627
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.9473684   0.3713237   2.4170471
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.0588235   0.4204262   2.6665969
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.5758551   0.4235688   0.7828931
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7478631   0.5825037   0.9601643
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7175877   0.5513225   0.9339944
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0951131   0.8117915   1.4773161
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2476061   0.9365686   1.6619403
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9367868   0.6754178   1.2992989
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1125051   0.8283548   1.4941274
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.1705877   0.8808407   1.5556451
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9938956   0.7322163   1.3490939
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7221013   0.5886468   0.8858117
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8399393   0.6740397   1.0466713
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7095763   0.5686964   0.8853555
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2546268   0.8719238   1.8053051
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0824767   0.7377220   1.5883432
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0880277   0.7431267   1.5930047
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.0735386   0.5671550   2.0320464
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         1.0372339   0.5366660   2.0046998
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.8453375   0.4169418   1.7138976
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1544952   0.9224522   1.4449088
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1911643   0.9700810   1.4626330
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2246953   1.0057241   1.4913420
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1379424   0.9753778   1.3276012
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1304526   0.9604228   1.3305837
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1298547   0.9835669   1.2979002
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0763113   0.6553125   1.7677765
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2103433   0.7442169   1.9684195
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1969042   0.7395267   1.9371573
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1204907   1.0865558   1.1554855
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0918282   1.0598216   1.1248014
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0466741   1.0174778   1.0767083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2151082   1.0964977   1.3465490
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1530345   1.0475465   1.2691450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0820456   0.9774535   1.1978295
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0989011   0.9086750   1.3289500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0256410   0.8316727   1.2648479
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0298273   0.8364943   1.2678440
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.2474642   1.2022680   4.2013058
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8918169   0.9721699   3.6814258
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         2.4583435   1.3280623   4.5505793
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.4121812   1.5787379   3.6856137
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.7364215   1.1015287   2.7372500
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.5686485   0.9920950   2.4802648
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8385070   0.6505119   1.0808319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9746846   0.7429800   1.2786483
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9900351   0.7697979   1.2732815
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1089395   0.8753386   1.4048813
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0881858   0.8579195   1.3802558
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9774571   0.7582911   1.2599678
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0778100   0.9742918   1.1923269
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1380074   1.0374883   1.2482656
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0247666   0.9228993   1.1378778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.3063483   1.1931061   1.4303388
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1958510   1.0825537   1.3210057
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3115591   1.2068312   1.4253753
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0291811   0.8622144   1.2284806
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0458686   0.8771570   1.2470300
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1424388   0.9677281   1.3486912
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3298982   1.1934080   1.4819989
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2689290   1.1328724   1.4213259
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1346840   1.0149916   1.2684910
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3345086   1.1643806   1.5294941
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2422685   1.0741865   1.4366510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1135118   0.9606258   1.2907299


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0203252   -0.1961517    0.1555013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1029412   -0.1034377    0.3093200
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0125670   -0.0556692    0.0305351
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1366779    0.0537452    0.2196105
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0852198    0.0328316    0.1376079
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0395749   -0.0723130   -0.0068368
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0206313   -0.0452351    0.0864977
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0469614   -0.1627625    0.0688397
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0373286    0.0084300    0.0662271
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0803304    0.0547586    0.1059022
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0228329   -0.0327845    0.0784502
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0198113    0.0109730    0.0286495
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0594729    0.0341938    0.0847520
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0187793   -0.1715677    0.2091264
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1585652   -0.2445307   -0.0725997
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0268507   -0.0511053    0.1048067
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0157761   -0.0245604    0.0561126
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0455377   -0.0734445   -0.0176309
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0268536   -0.0337227    0.0874299
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0194371   -0.1192415    0.0803673
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0363149    0.0045244    0.0681054
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0208515    0.0009879    0.0407150
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0489633   -0.0439789    0.1419055
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0235232    0.0159075    0.0311390
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0355362    0.0148489    0.0562234
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0361486   -0.0851282    0.1574255
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1859255    0.0881525    0.2836986
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1174431    0.0572485    0.1776378
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0136428   -0.0522849    0.0249994
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0225702   -0.0583722    0.1035126
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0354492    0.0004403    0.0704580
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1044236    0.0735452    0.1353020
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0327998   -0.0270093    0.0926089
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0300024    0.0171080    0.0428968
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0547736    0.0239954    0.0855517


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0314465   -0.3428961    0.2077705
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1794872   -0.2757414    0.4722745
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0135870   -0.0613168    0.0319963
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2130720    0.0706648    0.3336573
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1963149    0.0669233    0.3077635
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1140830   -0.2126296   -0.0235449
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0305912   -0.0722196    0.1235439
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1602651   -0.6317389    0.1749814
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0483833    0.0100029    0.0852757
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1169938    0.0786370    0.1537538
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0358051   -0.0555350    0.1192412
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0401119    0.0220551    0.0578354
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1022173    0.0575474    0.1447700
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0533333   -0.6757167    0.4651973
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3103829   -0.4950907   -0.1484945
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0632688   -0.1397345    0.2301143
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0659383   -0.1178851    0.2195340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2334664   -0.3847117   -0.0987408
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0968016   -0.1501029    0.2907005
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0870621   -0.6402510    0.2795591
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1120791    0.0082610    0.2050291
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0871996    0.0005017    0.1663773
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1386435   -0.1691614    0.3654127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0572496    0.0385523    0.0755832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1022714    0.0405698    0.1600049
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0425955   -0.1117937    0.1755455
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.4930160    0.1591762    0.6943084
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3929164    0.1602222    0.5611333
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0601487   -0.2449095    0.0971912
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0402297   -0.1155519    0.1742571
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0462476   -0.0007134    0.0910048
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1619024    0.1120568    0.2089498
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0546664   -0.0505827    0.1493715
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1380819    0.0771918    0.1949542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1447389    0.0595666    0.2221974

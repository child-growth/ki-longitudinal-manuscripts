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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     1        2      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     0       13      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     1        8      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     0       13      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     1        7      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     0       14      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     1        6      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                     0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                     1        4      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                     0       16      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                     1        3      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                     0       15      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                     1        2      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                     0       12      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                     1        5      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     0        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     1        4      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     1        0      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                     0        5      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                     1        5      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                     0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                     1        1      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                     0        4      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                     1        5      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                     0        6      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                     1        3      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     0       10      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     1        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     0       13      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     1        4      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     1        2      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0        6      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1        9      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       10      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1        5      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0        7      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1        8      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0        6      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1        9      60
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     0      156     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     1       19     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     0      136     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     1       44     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     0      151     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     1       18     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     0      161     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     1       13     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      515    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       78    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      656    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       63    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      436    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       47    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      540    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       49    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     0      119     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     1       32     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     0      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     1       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     0      110     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     1       40     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     0      110     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     1       40     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     0     5945   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     1      872   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     0     5259   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     1     1550   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     0     5574   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     1     1374   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     0     5432   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     1     1206   27212
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     0     1094    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     1      187    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     0     1000    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     1      377    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     0     1060    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     1      288    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     0     1169    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     1      251    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     0       21      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                     1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                     1        3      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     0       17      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                     1        3      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     0       17      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                     1        3      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                     0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                     1        2      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                     0       18      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                     1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                     0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                     1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                     0       13      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                     1        4      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                     1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                     1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                     1        2      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                     1        0      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                     0        8      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                     1        2      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                     0        8      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                     1        1      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                     0        6      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                     1        3      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                     0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                     1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     0       14      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                     1        3      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                     1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     0       15      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                     1        2      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                     1        0      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1        2      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0       14      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1        1      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0       11      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1        4      60
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     0      166     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                     1        9     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     0      166     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                     1       14     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     0      164     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                     1        5     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     0      171     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                     1        3     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      555    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       38    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      694    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       25    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      461    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       22    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      571    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       18    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     0      144     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                     1        7     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     0      137     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                     1       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     0      140     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                     1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     0      139     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                     1       11     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     0     6122   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                     1      671   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     0     5521   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                     1     1269   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     0     5828   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                     1     1107   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     0     5692   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                     1      936   27146
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     0     1107    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                     1       94    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     0     1109    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                     1      167    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     0     1150    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                     1      129    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     0     1232    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                     1      129    5117


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/9d3452d1-d907-4b21-9b39-86ba61b39f79/73921d89-fc9d-421d-8ea4-e21a0fb8b2cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9d3452d1-d907-4b21-9b39-86ba61b39f79/73921d89-fc9d-421d-8ea4-e21a0fb8b2cc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9d3452d1-d907-4b21-9b39-86ba61b39f79/73921d89-fc9d-421d-8ea4-e21a0fb8b2cc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9d3452d1-d907-4b21-9b39-86ba61b39f79/73921d89-fc9d-421d-8ea4-e21a0fb8b2cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6000000   0.3499898   0.8500102
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.3333333   0.0927609   0.5739057
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5333333   0.2787354   0.7879312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6000000   0.3499898   0.8500102
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7058744   0.6128612   0.7988877
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5218371   0.4175620   0.6261121
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6579925   0.5601622   0.7558228
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6494688   0.5504494   0.7484882
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2027369   0.1232238   0.2822501
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2781027   0.1957101   0.3604952
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3061433   0.2193059   0.3929807
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2152124   0.1380787   0.2923460
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1115027   0.0636594   0.1593460
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2429542   0.1793729   0.3065355
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1093362   0.0615518   0.1571206
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0719296   0.0333014   0.1105579
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1274794   0.1009133   0.1540455
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0899824   0.0694887   0.1104761
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0969352   0.0709300   0.1229404
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0842909   0.0619654   0.1066163
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2208159   0.1543749   0.2872568
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2869113   0.2155626   0.3582600
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2753209   0.2042217   0.3464201
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2719526   0.2010905   0.3428147
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4146252   0.3722940   0.4569564
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5158880   0.4564858   0.5752901
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5378613   0.4830133   0.5927093
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4779528   0.4231347   0.5327709
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2817159   0.2535815   0.3098504
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3852288   0.3494980   0.4209596
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3724216   0.3336000   0.4112432
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.3872720   0.3578006   0.4167434
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1899969   0.1373843   0.2426095
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.2512843   0.1913025   0.3112660
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2550221   0.1950548   0.3149894
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1399110   0.0914893   0.1883326
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1749032   0.1657349   0.1840715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1948775   0.1867188   0.2030362
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1880139   0.1800248   0.1960030
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1810031   0.1732920   0.1887142
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1640665   0.1431547   0.1849782
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2584641   0.2354584   0.2814699
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2089389   0.1857692   0.2321086
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1788122   0.1596245   0.1980000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3767359   0.2790521   0.4744196
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1081769   0.0431485   0.1732053
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2537595   0.1628867   0.3446323
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2422771   0.1531987   0.3313556
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1275153   0.0616015   0.1934292
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1326732   0.0670684   0.1982779
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2338554   0.1506825   0.3170284
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1048626   0.0439328   0.1657924
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0620944   0.0425904   0.0815985
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0351170   0.0217570   0.0484769
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0462859   0.0274708   0.0651010
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0310153   0.0170434   0.0449873
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0463576   0.0127936   0.0799216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0927152   0.0464166   0.1390138
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0666667   0.0267149   0.1066185
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0733333   0.0315815   0.1150852
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0750695   0.0486468   0.1014921
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1467819   0.0993326   0.1942312
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0914958   0.0518222   0.1311694
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1207442   0.0807168   0.1607717
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0452876   0.0312735   0.0593016
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0808124   0.0603499   0.1012750
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0660273   0.0449091   0.0871454
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0624714   0.0473850   0.0775577
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1404151   0.1332272   0.1476030
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1558541   0.1492098   0.1624983
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1522360   0.1452935   0.1591785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1412089   0.1344766   0.1479411
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0935023   0.0793294   0.1076752
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1159063   0.1010759   0.1307367
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0970794   0.0798373   0.1143214
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0986792   0.0849904   0.1123681


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5166667   0.3891548   0.6441786
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1346705   0.1093274   0.1600135
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0994128   0.0873992   0.1114263
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2558140   0.2209310   0.2906969
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4726135   0.4452311   0.4999958
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3562316   0.3392530   0.3732102
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2080783   0.1802263   0.2359304
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1838160   0.1782391   0.1893929
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2032805   0.1914625   0.2150985
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432047   0.0350415   0.0513679
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0697674   0.0494002   0.0901347
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1012536   0.0828843   0.1196229
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624796   0.0538987   0.0710604
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1467251   0.1417113   0.1517389
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1014266   0.0924810   0.1103722


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5555556   0.2414353   1.2783633
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8888889   0.4716916   1.6750849
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0000000   0.5547267   1.8026894
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7392775   0.5818059   0.9393704
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9321665   0.7641135   1.1371799
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9200911   0.7522212   1.1254238
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3717416   0.8422816   2.2340212
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.5100519   0.9360012   2.4361684
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0615351   0.6273762   1.7961421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.1789087   1.3174602   3.6036330
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9805700   0.5312413   1.8099450
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6450934   0.3243116   1.2831657
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7058582   0.5196866   0.9587237
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7603990   0.5425432   1.0657339
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6612118   0.4729697   0.9243742
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2993237   0.8794204   1.9197214
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2468346   0.8385490   1.8539126
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2315809   0.8273898   1.8332246
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2442272   1.0698841   1.4469804
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2972228   1.1271919   1.4929021
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1527345   0.9921763   1.3392750
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.3674369   1.1961783   1.5632148
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3219756   1.1476085   1.5228359
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3746897   1.2159502   1.5541523
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3225704   0.9174181   1.9066470
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.3422432   0.9330891   1.9308090
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.7363854   0.4730004   1.1464335
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1142022   1.0547914   1.1769594
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0749601   1.0143191   1.1392264
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0348762   0.9795913   1.0932811
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5753623   1.3557074   1.8306062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2735015   1.0786180   1.5035965
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0898768   0.9287577   1.2789464
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.2871425   0.1491218   0.5529095
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.6735741   0.4331543   1.0474374
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.6430955   0.4105132   1.0074509
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0404486   0.5104087   2.1209149
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8339398   0.9804034   3.4305628
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8223526   0.3776635   1.7906521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5655414   0.3458425   0.9248057
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7454107   0.4460514   1.2456795
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4994863   0.2885901   0.8645017
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         2.0000000   0.8299551   4.8195376
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.4380952   0.5618368   3.6809941
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.5819047   0.6297474   3.9736924
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.9552806   1.2160732   3.1438258
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2188150   0.6992552   2.1244175
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.6084335   0.9934067   2.6042288
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.7844274   1.1972493   2.6595806
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4579552   0.9357378   2.2716120
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3794365   0.9331759   2.0391063
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1099524   1.0554125   1.1673107
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0841856   1.0249492   1.1468455
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0056531   0.9535506   1.0606025
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2396094   1.0337472   1.4864673
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.0382567   0.8299506   1.2988448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0553670   0.8794232   1.2665114


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0833333   -0.3013054    0.1346387
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0704857   -0.1523567    0.0113854
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0460436   -0.0236889    0.1157760
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0231678   -0.0196865    0.0660221
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0280667   -0.0501529   -0.0059804
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0349981   -0.0238844    0.0938806
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0579883    0.0255158    0.0904607
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0745157    0.0500893    0.0989420
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0180814   -0.0275983    0.0637611
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0089128    0.0020140    0.0158116
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0392140    0.0211532    0.0572748
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1294532   -0.2104554   -0.0484511
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0237042   -0.0347265    0.0821349
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0188897   -0.0348726   -0.0029069
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0234098   -0.0078348    0.0546544
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0261841    0.0035134    0.0488549
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0171920    0.0044558    0.0299281
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0063100    0.0012586    0.0113615
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0079243   -0.0038614    0.0197101


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1612903   -0.6739874    0.1943815
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1109332   -0.2484019    0.0113981
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1850770   -0.1496818    0.4223624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1720333   -0.2142441    0.4354274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2823245   -0.5223745   -0.0801258
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1368107   -0.1263639    0.3384946
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1226970    0.0508828    0.1890774
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2091776    0.1379831    0.2744921
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0868972   -0.1611164    0.2819353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0484876    0.0100701    0.0854142
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1929060    0.0990319    0.2769991
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5235032   -0.8887505   -0.2288876
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1567534   -0.3321882    0.4662430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.4372151   -0.8470572   -0.1183125
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.3355408   -0.2847112    0.6563383
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2585996    0.0022701    0.4490749
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2751615    0.0441866    0.4503207
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0430058    0.0078884    0.0768802
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0781288   -0.0452739    0.1869628

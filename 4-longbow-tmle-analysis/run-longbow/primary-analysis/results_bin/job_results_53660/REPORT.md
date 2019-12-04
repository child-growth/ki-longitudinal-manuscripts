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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        hhwealth_quart    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        9    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1       14    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        7    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       20    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       16    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       25    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       11    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1       19    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1       10     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        3     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        3     24
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       13    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       19    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       23    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       31    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       16    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       33    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       14    175
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       26    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        3     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1       20     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        6     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1       19     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        3     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1       11     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        7     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1       28     97
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        8     34
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        9     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1       17     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        3     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1       17     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        6     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1       19     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        4     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1       14     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        8     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        8     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       14     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        5     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       12     51
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       20    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       49    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       34    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       35    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       64    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       31    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       46    324
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       44    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       61    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       44    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       60    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       36    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       51    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       38    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       61    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       39    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       45    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       24    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       54    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       31    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       37    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       35    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       43    308
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       81    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      105    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       77    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      124    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       44    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      105    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       64    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      111    711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       78    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       77    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       76    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       79    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       75    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       99    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       67    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       92    643
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        1      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        3      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1      9
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       68    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       55    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       44    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       43    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       44    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       33    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       48    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       33    368
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      135   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      269   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      183   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      256   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      127   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      159   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      219   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      341   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       24     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       15     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     1012   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      822   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     1205   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      786   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     1092   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      771   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     1059   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      815   7562
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      294   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      129   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      465   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      129   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      425   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      138   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      346   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      136   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        4     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1       10     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        2     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       11     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        3     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       13     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        3     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1       14     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1        8     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        3     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        2     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        1     15
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        6     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        8     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        7     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       14     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        5     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       19     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        4     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       17     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        2     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1       13     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        3     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1       12     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        1     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        7     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        2     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        7     47
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        2     10
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        2     10
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        2     10
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        4     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        7     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        2     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        7     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        6     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        5     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        3     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       35    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       20    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       27    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       21    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       40    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       15    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       33    201
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       22    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       36    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       23    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       40    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       21    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       36    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       21    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       41    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       13    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       38    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       11    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       40    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0        6    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       32    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       10    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       35    185
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       26    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       61    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       34    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       75    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       43    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       28    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       59    339
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       26    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       35    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       26    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       37    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       27    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       44    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       25    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       43    263
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   1        1      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   1        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   1        3      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   1        0      4
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       18    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       54    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0        9    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       41    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0        7    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       29    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       17    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       32    207
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       59    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      160    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0       52    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      137    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       32    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       89    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0       55    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      168    752
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      318   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      822   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      468   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      786   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      404   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      771   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      346   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      815   4730
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0       52    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       80    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0       71    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       71    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0       64    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       71    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0       55    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       84    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        5     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        4     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        5     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        9     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       13     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       12     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        8     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        5     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        2      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        7     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       11     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       16     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       17     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       11     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       14     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       10     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        9     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        7     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        3     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        7     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1       21     50
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        6     24
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        5     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1       10     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1       10     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        5     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1       13     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        3     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        9     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        2     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        5     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        5     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        9     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        4     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       10     37
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       18    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       24    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       16    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       13    123
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       22    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       25    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       21    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       20    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       15    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       15    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       17    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       20    155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       26    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       13    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       14    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1        5    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1        8    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       55    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       44    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       43    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       49    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       31    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       62    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       36    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       52    372
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       52    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       42    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       50    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       42    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       48    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       55    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       42    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       49    380
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1      5
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       50    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1        1    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       35    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1        2    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       37    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1        4    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       31    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1        1    161
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       76    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      109    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      131    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      119    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       95    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       70    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      164    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      173    937
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       21     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       14     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      694   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      737   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      688   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      713   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1        0   2832
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      242   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       49   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      394   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       58   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      361   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       67   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      291   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       52   1514


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
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/a208484f-2cc6-43d0-8194-9687b93bbf8a/bad7b1fa-4720-42b2-9635-0e9ed1281c65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a208484f-2cc6-43d0-8194-9687b93bbf8a/bad7b1fa-4720-42b2-9635-0e9ed1281c65/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a208484f-2cc6-43d0-8194-9687b93bbf8a/bad7b1fa-4720-42b2-9635-0e9ed1281c65/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a208484f-2cc6-43d0-8194-9687b93bbf8a/bad7b1fa-4720-42b2-9635-0e9ed1281c65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.6086957   0.3833475   0.8340438
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7407407   0.5697050   0.9117765
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.6097561   0.4680022   0.7515100
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.6333333   0.4616178   0.8050489
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.6394779   0.4125534   0.8664024
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5906921   0.4502133   0.7311710
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.6959017   0.5471200   0.8446833
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.6783935   0.5142636   0.8425235
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7180089   0.6037348   0.8322831
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5803479   0.4613251   0.6993707
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6502312   0.5487026   0.7517597
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5987435   0.4827890   0.7146980
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5753858   0.4767587   0.6740129
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5715929   0.4688657   0.6743202
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5784273   0.4682753   0.6885793
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6088787   0.4962298   0.7215275
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.5363052   0.4303019   0.6423085
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.6926968   0.5871324   0.7982612
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.5556081   0.4425817   0.6686346
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.5261223   0.4096781   0.6425664
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5689921   0.4953471   0.6426370
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6125018   0.5388842   0.6861194
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7037846   0.6241137   0.7834554
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6320561   0.5540908   0.7100214
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4916664   0.4030468   0.5802859
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5095644   0.4181820   0.6009468
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5652896   0.4892050   0.6413743
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5679382   0.4827961   0.6530802
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4024190   0.3269913   0.4778467
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5099989   0.4182967   0.6017012
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4675861   0.3803628   0.5548094
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4127914   0.3247932   0.5007896
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6573899   0.6075852   0.7071946
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5847566   0.5372486   0.6322646
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5627052   0.5007432   0.6246672
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6113866   0.5699864   0.6527868
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4372499   0.4160394   0.4584604
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3972216   0.3768720   0.4175712
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4184756   0.3965635   0.4403878
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4338626   0.4121286   0.4555965
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2875570   0.2436780   0.3314361
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2191507   0.1884646   0.2498367
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2522674   0.2191742   0.2853606
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2769300   0.2384222   0.3154378
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7936218   0.6680957   0.9191478
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5837307   0.4360622   0.7313992
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6686410   0.5430350   0.7942470
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7126005   0.5766889   0.8485122
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5974356   0.4670400   0.7278313
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6139951   0.4904891   0.7375011
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6159476   0.4868205   0.7450748
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6456087   0.5236140   0.7676034
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7450980   0.6225088   0.8676873
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7843137   0.6686185   0.9000089
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8421053   0.7388378   0.9453727
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7777778   0.6629047   0.8926508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6937815   0.5922395   0.7953235
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6851501   0.5947127   0.7755876
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7534278   0.6346086   0.8722470
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6940839   0.5938717   0.7942962
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5770595   0.4476171   0.7065019
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5883504   0.4659317   0.7107691
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6195541   0.5032894   0.7358187
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.6249431   0.5034296   0.7464567
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7215423   0.6608274   0.7822573
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7232153   0.6612522   0.7851784
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7373528   0.6598548   0.8148507
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7499171   0.6937469   0.8060873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.7233064   0.6974100   0.7492029
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.6260569   0.5996573   0.6524566
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.6582307   0.6299998   0.6864617
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.7005286   0.6733551   0.7277020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5540590   0.4773379   0.6307802
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5219860   0.4551177   0.5888543
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5480359   0.4754390   0.6206329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5937588   0.5209587   0.6665589
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.6111111   0.3489650   0.8732572
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5151515   0.3205740   0.7097291
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.5600000   0.3272521   0.7927479
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4736842   0.2422327   0.7051357
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5810018   0.3674439   0.7945597
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5536846   0.3500489   0.7573204
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6213135   0.4606044   0.7820225
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4112821   0.2109680   0.6115962
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5324545   0.3942254   0.6706837
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5183054   0.3568784   0.6797323
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4524764   0.2374631   0.6674897
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5256565   0.3577217   0.6935914
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2121212   0.0730235   0.3512190
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5185185   0.3110218   0.7260152
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1666667   0.0616627   0.2716706
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2424242   0.0917710   0.3930775
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4413068   0.3396025   0.5430110
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5249403   0.4169302   0.6329504
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6693090   0.5679954   0.7706226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5898281   0.4831171   0.6965392
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4515471   0.3410675   0.5620268
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4462412   0.3238971   0.5685854
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5277456   0.4289121   0.6265790
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5308348   0.4178115   0.6438581
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5746784   0.5007332   0.6486236
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4688999   0.4031515   0.5346483
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3981318   0.3148072   0.4814564
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5082868   0.4526577   0.5639160
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1677288   0.1226761   0.2127815
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1283735   0.0984308   0.1583162
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1561389   0.1244283   0.1878494
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1509004   0.1123464   0.1894544


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6228571   0.5433246   0.7023896
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4456522   0.3930622   0.4982422
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223750   0.4112475   0.4335026
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752643   0.6619190   0.6886095
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.2169312   0.7866441   1.8825814
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         1.0017422   0.6469992   1.5509871
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         1.0404762   0.6575813   1.6463223
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.9237100   0.6018365   1.4177276
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.0882341   0.7187912   1.6475627
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.0608553   0.6904704   1.6299237
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8082739   0.6234294   1.0479241
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9056031   0.7247404   1.1316010
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8338942   0.6491134   1.0712758
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9934081   0.7751898   1.2730555
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0052860   0.7779155   1.2991128
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0582094   0.8222482   1.3618845
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.2916093   1.0075917   1.6556852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0359925   0.7886210   1.3609583
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9810128   0.7310495   1.3164445
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0764681   0.9019707   1.2847242
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.2368970   1.0414389   1.4690388
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1108347   0.9288073   1.3285357
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0364028   0.8041637   1.3357115
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1497424   0.9184248   1.4393205
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1551292   0.9135071   1.4606602
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2673331   1.0011921   1.6042208
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1619385   0.9187352   1.4695216
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0257752   0.7954679   1.3227620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8895125   0.7961578   0.9938138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8559687   0.7488939   0.9783528
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9300212   0.8403548   1.0292551
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.9084545   0.8482370   0.9729468
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9570629   0.8925229   1.0262699
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9922531   0.9271118   1.0619715
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7621121   0.6226655   0.9327878
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.8772778   0.7207215   1.0678415
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9630437   0.7868910   1.1786296
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7355276   0.5454854   0.9917787
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8425185   0.6588439   1.0773983
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8979095   0.7006568   1.1506940
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0277176   0.7632298   1.3838604
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0309858   0.7617208   1.3954348
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0806330   0.8090147   1.4434444
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.0526316   0.8439353   1.3129363
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.1301939   0.9205243   1.3876204
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0438596   0.8368004   1.3021539
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9875590   0.8103721   1.2034877
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0859728   0.8756283   1.3468466
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0004360   0.8143801   1.2289988
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0195663   0.7503997   1.3852823
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0736398   0.8009106   1.4392398
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0829786   0.8040877   1.4586004
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0023186   0.8890086   1.1300707
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0219120   0.8934937   1.1687874
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0393252   0.9288886   1.1628917
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8655487   0.8192140   0.9145041
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9100303   0.8607033   0.9621842
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9685088   0.9188949   1.0208014
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9421126   0.7884121   1.1257770
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9891291   0.8245735   1.1865242
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0716526   0.8985008   1.2781728
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.8429752   0.4759882   1.4929093
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9163636   0.5042783   1.6651962
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.7751196   0.4045501   1.4851322
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9529827   0.5662506   1.6038410
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0693831   0.6806825   1.6800492
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7078845   0.3851372   1.3010959
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9734265   0.6528995   1.4513095
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8497935   0.4929623   1.4649173
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9872327   0.6575803   1.4821436
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.4444444   1.1338866   5.2697586
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7857143   0.3159350   1.9540314
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.1428571   0.4631547   2.8200568
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.1895134   0.8737462   1.6193972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.5166525   1.1505844   1.9991883
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3365491   0.9964192   1.7927831
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9882495   0.6845240   1.4267391
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1687497   0.8585599   1.5910083
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1755911   0.8502421   1.6254365
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8159344   0.6745551   0.9869453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.6927906   0.5419019   0.8856932
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8844718   0.7471497   1.0470330
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7653634   0.5362250   1.0924168
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9309007   0.6647010   1.3037082
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8996688   0.6209456   1.3035022


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0359324   -0.1615889    0.2334538
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0166208   -0.2175105    0.1842690
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0883793   -0.1913426    0.0145839
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0144876   -0.0711961    0.1001713
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0448636   -0.0440281    0.1337554
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0568870   -0.0066220    0.1203959
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0479915   -0.0289232    0.1249062
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0432332   -0.0116286    0.0980950
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0505219   -0.0937917   -0.0072522
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0148749   -0.0330818    0.0033321
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0295551   -0.0668944    0.0077842
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1219800   -0.2382837   -0.0056762
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0400644   -0.0734892    0.1536179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0386857   -0.0621324    0.1395039
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0082834   -0.0793999    0.0959667
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0275032   -0.0854615    0.1404680
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0151598   -0.0351068    0.0654264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0480421   -0.0711376   -0.0249467
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0043351   -0.0589048    0.0675751
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0742690   -0.3105292    0.1619912
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0200262   -0.2123092    0.1722569
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0163255   -0.1356828    0.1030318
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0643016   -0.0598472    0.1884503
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1151449    0.0271323    0.2031574
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0431897   -0.0526982    0.1390777
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0720103   -0.1388778   -0.0051429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0184554   -0.0580157    0.0211049


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0557414   -0.3076334    0.3181389
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0266847   -0.4049457    0.2497351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1403672   -0.3176190    0.0130400
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0245605   -0.1319942    0.1594637
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0771955   -0.0894955    0.2183831
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0908913   -0.0165827    0.1870031
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0889295   -0.0657324    0.2211465
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0970111   -0.0352932    0.2124076
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0832503   -0.1570206   -0.0141835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0352172   -0.0792567    0.0070253
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1145538   -0.2683230    0.0205727
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1816146   -0.3719852   -0.0176590
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0628461   -0.1335743    0.2252316
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0493577   -0.0889559    0.1701034
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0117987   -0.1213532    0.1291398
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0454928   -0.1611472    0.2153587
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0205779   -0.0501414    0.0865348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0711457   -0.1060256   -0.0373658
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0077636   -0.1122268    0.1148090
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1383442   -0.6772300    0.2274002
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0356988   -0.4420554    0.2561506
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0316307   -0.2916243    0.1760283
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2326203   -0.3708498    0.5704332
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2069270    0.0307804    0.3510606
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0872984   -0.1289663    0.2621354
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1432562   -0.2850743   -0.0170888
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1236346   -0.4209727    0.1114857

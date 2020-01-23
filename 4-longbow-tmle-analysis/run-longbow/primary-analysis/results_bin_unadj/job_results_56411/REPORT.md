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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hhwealth_quart    wast_rec90d   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  ---------------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        9    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1       14    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        7    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       20    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       16    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       25    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       11    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1       19    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0        1     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1       10     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0        2     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        3     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0        2     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        2     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0        1     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        3     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       13    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       19    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       23    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       31    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       16    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       33    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       14    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       26    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        3     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1       20     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        6     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1       19     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        3     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1       11     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        7     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1       28     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        8     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        2     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        6     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        5     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        3     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        9     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1       17     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        3     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1       17     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        6     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1       19     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        4     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1       14     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        2     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        8     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        1     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        8     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       14     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        5     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       12     51  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       20    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       49    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       34    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       35    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       64    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       31    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       46    324  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       44    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       61    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       44    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       60    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       36    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       51    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       38    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       61    395  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       39    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       45    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       24    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       54    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       31    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       37    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       35    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       43    308  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       81    711  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      105    711  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       77    711  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      124    711  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       44    711  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      105    711  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       64    711  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      111    711  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       78    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       77    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       76    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       79    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       75    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       99    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       67    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       92    643  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        1      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        3      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1      9  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       68    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       55    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       44    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       43    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       44    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       33    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       48    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       33    368  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      135   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      269   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      183   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      256   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      127   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      159   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      219   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      341   1689  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       24     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       15     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2     78  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     1012   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      822   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     1205   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      786   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     1092   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      771   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     1059   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      815   7562  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      294   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      129   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      465   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      129   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      425   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      138   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      346   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      136   2062  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        4     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1       10     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        2     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       11     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        3     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       13     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        3     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1       14     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1        8     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        3     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        2     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        6     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        8     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        7     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       14     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        5     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       19     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        4     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       17     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        2     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1       13     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        3     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1       12     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        1     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        7     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        2     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        7     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        2     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        2     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        2     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        4     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        7     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        2     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        7     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        1     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        6     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        1     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        5     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        3     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        1     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2     14  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       35    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       20    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       27    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       21    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       40    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       15    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       33    201  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       22    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       36    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       23    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       40    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       21    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       36    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       21    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       41    240  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       13    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       38    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       11    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       40    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0        6    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       32    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       10    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       35    185  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       26    339  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       61    339  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       34    339  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       75    339  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13    339  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       43    339  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       28    339  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       59    339  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       26    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       35    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       26    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       37    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       27    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       44    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       25    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       43    263  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   1        1      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   1        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   1        3      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   1        0      4  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       18    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       54    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0        9    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       41    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0        7    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       29    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       17    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       32    207  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       59    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      160    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0       52    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      137    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       32    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       89    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0       55    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      168    752  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0        3      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0        1      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        0      4  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      318   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      822   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      468   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      786   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      404   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      771   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      346   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      815   4730  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0       52    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       80    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0       71    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       71    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0       64    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       71    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0       55    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       84    548  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        5     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        4     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        5     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        9     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       13     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       12     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        8     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        5     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   0        1      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                   1        2      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   0        1      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                   1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   0        2      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                   1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   0        1      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                   1        2      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        7     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       11     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       16     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       17     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       11     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1       14     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       10     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        9     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        1     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        7     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        3     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        7     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        2     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        4     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        5     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1       21     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        6     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        2     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        4     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        5     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1       10     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1       10     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        5     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1       13     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        3     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        9     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        2     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        5     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        1     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        5     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        9     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        4     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       10     37  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       14    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       14    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       18    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       14    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       24    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       16    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       13    123  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       22    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       25    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       21    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       20    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       15    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       15    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       17    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       20    155  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       26    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1        7    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       13    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       14    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       25    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1        5    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       25    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1        8    123  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       55    372  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       44    372  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       43    372  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       49    372  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       31    372  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       62    372  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       36    372  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       52    372  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       52    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       42    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       50    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       42    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       48    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       55    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       42    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       49    380  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1      5  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       50    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1        1    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       35    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1        2    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       37    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1        4    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       31    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1        1    161  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       76    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      109    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      131    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      119    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       95    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       70    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      164    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      173    937  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       21     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       14     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2     74  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      694   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1        0   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      737   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1        0   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      688   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1        0   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      713   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1        0   2832  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      242   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       49   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      394   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       58   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      361   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       67   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      291   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       52   1514  wast_rec90d      


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/52a13cf7-ed64-4341-b7a5-f782ca873532/eed2b6ce-84bf-4402-8b37-e0e33b567115/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/52a13cf7-ed64-4341-b7a5-f782ca873532/eed2b6ce-84bf-4402-8b37-e0e33b567115/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/52a13cf7-ed64-4341-b7a5-f782ca873532/eed2b6ce-84bf-4402-8b37-e0e33b567115/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/52a13cf7-ed64-4341-b7a5-f782ca873532/eed2b6ce-84bf-4402-8b37-e0e33b567115/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.6086957   0.3833475   0.8340438
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7407407   0.5697050   0.9117765
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.6097561   0.4680022   0.7515100
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.6333333   0.4616178   0.8050489
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.5937500   0.3787676   0.8087324
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5740741   0.4355133   0.7126349
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.6734694   0.5288188   0.8181200
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.6500000   0.4934132   0.8065868
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7101449   0.5974063   0.8228835
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5696203   0.4541777   0.6850628
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6464646   0.5453011   0.7476282
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5974026   0.4823381   0.7124671
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5809524   0.4835796   0.6783252
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5769231   0.4754717   0.6783744
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5862069   0.4781803   0.6942335
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6161616   0.5052331   0.7270901
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.5357143   0.4247304   0.6466982
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.6923077   0.5867479   0.7978674
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.5441176   0.4215003   0.6667349
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.5512821   0.4400840   0.6624801
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5645161   0.4911377   0.6378946
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6169154   0.5447761   0.6890547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7046980   0.6263903   0.7830057
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6342857   0.5573657   0.7112057
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4967742   0.4094766   0.5840718
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5096774   0.4186698   0.6006850
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5689655   0.4933532   0.6445779
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5786163   0.4930237   0.6642090
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4471545   0.3569854   0.5373236
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4942529   0.3852897   0.6032161
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4285714   0.3150080   0.5421349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4074074   0.2948140   0.5200008
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6658416   0.6156941   0.7159891
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5831435   0.5356939   0.6305931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5559441   0.4939019   0.6179862
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6089286   0.5675004   0.6503567
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4482007   0.4253377   0.4710636
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3947765   0.3733823   0.4161707
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4138486   0.3916210   0.4360763
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4348986   0.4123967   0.4574005
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3049645   0.2571154   0.3528136
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2171717   0.1844960   0.2498475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2451155   0.2102364   0.2799945
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2821577   0.2405121   0.3238032
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7777778   0.6597724   0.8957831
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5744681   0.4290922   0.7198440
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6557377   0.5322573   0.7792182
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6875000   0.5565289   0.8184711
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6206897   0.4919104   0.7494689
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6349206   0.5131671   0.7566742
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6315789   0.5040730   0.7590849
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6612903   0.5402274   0.7823532
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7450980   0.6225088   0.8676873
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7843137   0.6686185   0.9000089
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8421053   0.7388378   0.9453727
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7777778   0.6629047   0.8926508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7011494   0.6027851   0.7995137
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6880734   0.5996955   0.7764513
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7678571   0.6553923   0.8803220
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6781609   0.5794647   0.7768571
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5737705   0.4470189   0.7005221
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5873016   0.4659245   0.7086787
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6197183   0.5071958   0.7322408
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.6323529   0.5153038   0.7494021
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7305936   0.6702821   0.7909052
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7248677   0.6628824   0.7868530
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7355372   0.6562866   0.8147878
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7533632   0.6966900   0.8100364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.7210526   0.6950049   0.7471004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.6267943   0.6000109   0.6535777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.6561702   0.6289971   0.6833433
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.7019811   0.6757161   0.7282460
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.6060606   0.5226290   0.6894922
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5000000   0.4176866   0.5823134
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5259259   0.4416190   0.6102328
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.6043165   0.5229504   0.6856826
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.6111111   0.3489650   0.8732572
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5151515   0.3205740   0.7097291
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.5600000   0.3272521   0.7927479
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4736842   0.2422327   0.7051357
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5833333   0.3760402   0.7906264
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5625000   0.3678223   0.7571777
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6315789   0.4735198   0.7896381
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4482759   0.2642794   0.6322724
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5319149   0.3941494   0.6696804
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4878049   0.3199789   0.6556308
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5000000   0.2999019   0.7000981
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5405405   0.3626702   0.7184109
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2121212   0.0730235   0.3512190
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5185185   0.3110218   0.7260152
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1666667   0.0616627   0.2716706
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2424242   0.0917710   0.3930775
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4444444   0.3450351   0.5438538
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5326087   0.4262476   0.6389698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6666667   0.5658761   0.7674572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5909091   0.4849145   0.6969037
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4468085   0.3367161   0.5569009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4565217   0.3377547   0.5752888
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5339806   0.4361716   0.6317896
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5384615   0.4268698   0.6500533
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5891892   0.5164024   0.6619760
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4760000   0.4100748   0.5419252
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4242424   0.3419677   0.5065172
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5133531   0.4577706   0.5689356
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1683849   0.1236146   0.2131552
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1283186   0.0984743   0.1581628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1565421   0.1248705   0.1882136
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1516035   0.1131458   0.1900612


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
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.9668616   0.6259662   1.4934054
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.1342642   0.7444897   1.7281035
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.0947368   0.7086409   1.6911933
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8021183   0.6201245   1.0375235
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9103278   0.7284165   1.1376687
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8412404   0.6554042   1.0797694
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9930643   0.7789031   1.2661096
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0090447   0.7865678   1.2944479
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0606061   0.8293241   1.3563880
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.2923077   0.9991297   1.6715139
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0156863   0.7477641   1.3796043
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0290598   0.7705592   1.3742800
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0928216   0.9175216   1.3016142
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.2483221   1.0521020   1.4811380
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1235918   0.9405966   1.3421892
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0259740   0.7987362   1.3178603
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1453202   0.9190883   1.4272386
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1647472   0.9257782   1.4654007
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1053292   0.8197376   1.4904190
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9584416   0.6869861   1.3371597
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9111111   0.6470918   1.2828527
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8757992   0.7838829   0.9784933
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8349494   0.7297526   0.9553109
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9145247   0.8262451   1.0122365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8808030   0.8176299   0.9488572
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9233557   0.8574317   0.9943483
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9703212   0.9023202   1.0434470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7121212   0.5729974   0.8850242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.8037507   0.6503332   0.9933603
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9252147   0.7459161   1.1476120
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7386018   0.5498819   0.9920906
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8430913   0.6619911   1.0737349
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8839286   0.6928666   1.1276770
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0229277   0.7711592   1.3568936
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0175439   0.7617749   1.3591882
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0654122   0.8078824   1.4050352
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.0526316   0.8439353   1.3129363
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.1301939   0.9205243   1.3876204
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0438596   0.8368004   1.3021539
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9813506   0.8113686   1.1869438
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0951405   0.8941056   1.3413771
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9672131   0.7901920   1.1838910
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0235828   0.7563866   1.3851669
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0800805   0.8114624   1.4376191
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1021008   0.8261414   1.4702401
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9921627   0.8809754   1.1173829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0067665   0.8789824   1.1531276
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0311659   0.9221973   1.1530105
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8692767   0.8219726   0.9193032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9100171   0.8613575   0.9614255
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9735504   0.9242114   1.0255233
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.8250000   0.6656634   1.0224762
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.8677778   0.7024934   1.0719507
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9971223   0.8224715   1.2088600
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.8429752   0.4759882   1.4929093
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.9163636   0.5042783   1.6651962
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         0.7751196   0.4045501   1.4851322
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9642857   0.5872039   1.5835162
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0827068   0.7010499   1.6721406
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7684729   0.4465098   1.3225926
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9170732   0.5961245   1.4108181
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9400000   0.5835489   1.5141833
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0162162   0.6685015   1.5447915
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.4444444   1.1338866   5.2697586
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7857143   0.3159350   1.9540314
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.1428571   0.4631547   2.8200568
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.1983696   0.8878965   1.6174065
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.5000000   1.1450832   1.9649228
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3295455   0.9981326   1.7709983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0217391   0.7140853   1.4619414
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1950994   0.8792644   1.6243834
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2051282   0.8734587   1.6627391
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8078899   0.6710549   0.9726270
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.7200445   0.5721405   0.9061831
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8712874   0.7393119   1.0268220
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7620553   0.5352689   1.0849279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9296681   0.6656234   1.2984562
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9003391   0.6234634   1.3001734


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0359324   -0.1615889    0.2334538
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0291071   -0.1594031    0.2176174
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0805153   -0.1820888    0.0210582
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0089210   -0.0756958    0.0935379
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0454545   -0.0485960    0.1395051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0613629   -0.0018058    0.1245317
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0428837   -0.0329218    0.1186891
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0015023   -0.0754398    0.0724353
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0589736   -0.1026060   -0.0153412
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0258256   -0.0456502   -0.0060010
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0469626   -0.0884711   -0.0054541
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1061360   -0.2157840    0.0035121
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0168103   -0.0947957    0.1284164
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0386857   -0.0621324    0.1395039
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0009155   -0.0836438    0.0854747
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0307922   -0.0795226    0.1411071
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0061085   -0.0440476    0.0562646
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0457884   -0.0687999   -0.0227768
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0476664   -0.1207362    0.0254033
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0742690   -0.3105292    0.1619912
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0223577   -0.2088672    0.1641517
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0157859   -0.1363138    0.1047420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0643016   -0.0598472    0.1884503
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1120072    0.0263321    0.1976822
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0479283   -0.0475094    0.1433660
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0865211   -0.1523281   -0.0207141
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0191114   -0.0584048    0.0201819


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0557414   -0.3076334    0.3181389
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0467317   -0.3107529    0.3067186
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1278772   -0.3026430    0.0234415
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0151236   -0.1392355    0.1485681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0782123   -0.0991322    0.2269423
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0980428   -0.0089015    0.1936508
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0794645   -0.0725455    0.2099305
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0033710   -0.1837913    0.1495516
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0971770   -0.1715762   -0.0275024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0611438   -0.1091397   -0.0152248
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1820242   -0.3531605   -0.0325318
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1580247   -0.3371772   -0.0028747
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0263692   -0.1655019    0.1866534
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0493577   -0.0889559    0.1701034
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0013040   -0.1267046    0.1147690
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0509331   -0.1505003    0.2170988
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0082917   -0.0621976    0.0741032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0678081   -0.1025282   -0.0341813
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0853634   -0.2247396    0.0381517
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1383442   -0.6772300    0.2274002
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0398551   -0.4318239    0.2448104
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0305851   -0.2935436    0.1789178
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2326203   -0.3708498    0.5704332
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2012882    0.0305652    0.3419460
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0968764   -0.1185885    0.2708380
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1721237   -0.3117148   -0.0473877
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1280297   -0.4229819    0.1057855

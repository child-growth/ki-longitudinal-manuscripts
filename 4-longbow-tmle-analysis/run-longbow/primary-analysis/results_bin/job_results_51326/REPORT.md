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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        2     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        3     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        9     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        8     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        6     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        8     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        4     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        1     41
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        6     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       11     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        7     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       14     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        3     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        6     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        6     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       12     65
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        2     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        5     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        2     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        3     12
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        3      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      8
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        6     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        2     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        6     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        6     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        6     26
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        1     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        5     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       20    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       49    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       34    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       35    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       64    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       31    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       48    326
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       44    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       61    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       44    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       60    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       36    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       51    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       38    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       61    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       23    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       54    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       52    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       54    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       26    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       39    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       27    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       31    306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       81    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      105    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       77    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      124    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       44    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      105    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       64    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      111    711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       63    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       69    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       65    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       67    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       67    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       81    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       73    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       76    561
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      958   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      800   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     1199   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      780   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     1157   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      830   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     1055   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      787   7566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      271   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      130   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      475   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      150   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      409   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      119   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      375   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      133   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        0     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        2     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        4     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        5     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        1     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        5     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        2     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        1     20
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        2     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        5     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        2     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        8     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        3     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        5     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        1     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6     32
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        3      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        2      6
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        0      1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        2     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        2     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        2     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        2      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2      5
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       35    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       20    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       27    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       21    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       40    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       15    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       35    203
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       22    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       36    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       23    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       40    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       21    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       36    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       21    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       41    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0        9    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       39    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       14    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       45    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0        7    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       31    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0        9    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       29    183
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       26    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       61    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       34    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       75    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       43    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       28    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       59    339
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       15    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       27    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       16    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       25    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       22    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       30    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       22    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       23    180
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      298   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      800   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      471   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      780   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      421   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      830   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      347   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      787   4734
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0       53    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       75    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0       72    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       80    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0       62    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       67    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0       55    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       84    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        2     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        1     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        5     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        3     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        5     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        3     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        2     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        0     21
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        4     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        6     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        5     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        6     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        0     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        1     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        5     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6     33
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        2      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        2      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        1      6
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        3      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      7
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        4     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        4     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        4     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        1     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        0     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        3     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        3     11
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       14    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       15    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       38    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1        9    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       19    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1        2    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       55    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       44    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       43    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       49    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       31    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       62    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       36    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       52    372
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       48    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       42    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       49    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       42    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       45    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       51    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       51    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       53    381
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      660   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      728   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      736   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      708   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1        0   2832
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      218   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       55   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      403   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       70   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      347   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       52   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      320   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       49   1514


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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/28b84011-23ed-497d-9637-8dde11d8861b/b1290efd-2ff8-4a33-8bf5-d6e12708c1c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/28b84011-23ed-497d-9637-8dde11d8861b/b1290efd-2ff8-4a33-8bf5-d6e12708c1c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/28b84011-23ed-497d-9637-8dde11d8861b/b1290efd-2ff8-4a33-8bf5-d6e12708c1c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/28b84011-23ed-497d-9637-8dde11d8861b/b1290efd-2ff8-4a33-8bf5-d6e12708c1c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6836780   0.5659917   0.8013642
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5560699   0.4396645   0.6724754
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6340978   0.5310169   0.7371787
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5931256   0.4774419   0.7088092
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5810916   0.4828172   0.6793661
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5739833   0.4718494   0.6761173
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5773144   0.4665340   0.6880948
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6173821   0.5060891   0.7286751
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7051147   0.6005952   0.8096342
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5109050   0.4225060   0.5993041
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.6113130   0.4831480   0.7394779
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.5209865   0.3923940   0.6495790
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5691954   0.4954430   0.6429477
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6144838   0.5410882   0.6878795
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7060449   0.6274564   0.7846334
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6319919   0.5543018   0.7096821
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5132363   0.4178119   0.6086607
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5052109   0.4058371   0.6045846
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5455423   0.4625119   0.6285727
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4999142   0.4130770   0.5867514
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4102205   0.3354085   0.4850326
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4941314   0.4016267   0.5866360
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4742322   0.3938767   0.5545878
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4191086   0.3326535   0.5055638
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6548936   0.6049075   0.7048797
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5838066   0.5364353   0.6311779
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5662142   0.5039634   0.6284651
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6116495   0.5702174   0.6530815
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4420277   0.4203956   0.4636599
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3948131   0.3742508   0.4153755
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4204809   0.3997714   0.4411905
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4354595   0.4139818   0.4569371
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3122452   0.2657044   0.3587860
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2395583   0.2096349   0.2694817
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2308408   0.1965496   0.2651320
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2636117   0.2267971   0.3004263
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7730423   0.6506078   0.8954767
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5798705   0.4281672   0.7315739
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6570038   0.5319865   0.7820211
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6988542   0.5688790   0.8288293
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6207664   0.4907887   0.7507441
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6231846   0.4984751   0.7478942
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6225798   0.4912835   0.7538761
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6493749   0.5265542   0.7721957
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8125000   0.6999286   0.9250714
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7627119   0.6550333   0.8703904
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8157895   0.6901313   0.9414477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7631579   0.6373034   0.8890124
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6977117   0.5966109   0.7988125
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6908334   0.6004382   0.7812286
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7509117   0.6317894   0.8700340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6899206   0.5888985   0.7909427
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6470953   0.4986449   0.7955456
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6075387   0.4513581   0.7637193
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5791868   0.4451359   0.7132376
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5098050   0.3593341   0.6602759
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7232567   0.6626272   0.7838862
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7286000   0.6668804   0.7903197
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7433813   0.6644810   0.8222815
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7568554   0.7004344   0.8132763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.7346440   0.7087241   0.7605639
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.6210742   0.5938986   0.6482498
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.6635561   0.6372925   0.6898197
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.6966340   0.6694998   0.7237682
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5605666   0.4817430   0.6393901
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5372137   0.4690594   0.6053680
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5479526   0.4732945   0.6226107
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5946018   0.5208163   0.6683872
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5570077   0.3448361   0.7691792
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5350663   0.3330066   0.7371259
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6204379   0.4571503   0.7837255
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4225731   0.2286777   0.6164686
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5298179   0.3902819   0.6693540
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4699166   0.2940837   0.6457494
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4942584   0.2890456   0.6994712
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5394939   0.3582898   0.7206980
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4444403   0.3438727   0.5450080
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5360805   0.4277533   0.6444077
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6668689   0.5642039   0.7695339
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5890491   0.4808121   0.6972861
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4648815   0.3496308   0.5801321
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4614240   0.3395939   0.5832540
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5277587   0.4234222   0.6320952
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5078048   0.4059501   0.6096595
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5906926   0.5164367   0.6649484
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4747180   0.4086709   0.5407650
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4203936   0.3366805   0.5041068
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5152206   0.4594593   0.5709818
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2024851   0.1532709   0.2516992
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1470461   0.1167267   0.1773655
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1311406   0.0994325   0.1628487
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1328142   0.0979762   0.1676522


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5816993   0.5247676   0.6386311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4456522   0.3930622   0.4982422
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4225482   0.4114219   0.4336746
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7868852   0.7281477   0.8456228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6753274   0.6619885   0.6886664
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8133507   0.6203223   1.0664445
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9274803   0.7316284   1.1757604
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8675511   0.6689611   1.1250952
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9877673   0.7726653   1.2627514
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9934998   0.7692391   1.2831406
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0624522   0.8296142   1.3606380
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.7245701   0.5793038   0.9062634
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8669695   0.6720155   1.1184804
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7388678   0.5567412   0.9805733
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0795657   0.9051878   1.2875363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.2404262   1.0456435   1.4714932
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1103251   0.9287829   1.3273521
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9843631   0.7508393   1.2905167
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0629457   0.8362589   1.3510811
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9740429   0.7553498   1.2560532
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2045505   0.9507587   1.5260886
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1560421   0.9312433   1.4351067
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0216667   0.7997292   1.3051953
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8914526   0.7976890   0.9962376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8645897   0.7563084   0.9883736
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9339677   0.8435507   1.0340761
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8931863   0.8332919   0.9573857
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9512547   0.8892555   1.0175765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9851406   0.9208565   1.0539123
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7672122   0.6342569   0.9280380
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.7392934   0.6015163   0.9086282
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8442459   0.6913289   1.0309871
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7501149   0.5522678   1.0188398
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8498938   0.6633076   1.0889660
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9040310   0.7080757   1.1542156
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0038956   0.7511941   1.3416058
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0029213   0.7444335   1.3511632
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0460859   0.7875245   1.3895386
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9387223   0.7702487   1.1440455
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0040486   0.8161674   1.2351799
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9392713   0.7572670   1.1650190
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9901416   0.8144262   1.2037683
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0762492   0.8680243   1.3344238
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9888333   0.8046422   1.2151878
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9388706   0.6651311   1.3252695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.8950565   0.6460072   1.2401194
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7878361   0.5421035   1.1449578
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0073879   0.8944886   1.1345370
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0278250   0.8981245   1.1762558
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0464547   0.9357334   1.1702772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8454084   0.7994499   0.8940089
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9032349   0.8568568   0.9521234
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9482606   0.8999563   0.9991577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9583407   0.8003552   1.1475116
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9774979   0.8106677   1.1786606
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0607157   0.8862381   1.2695435
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9606085   0.5594111   1.6495358
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.1138768   0.7013996   1.7689225
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7586487   0.4164639   1.3819875
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.8869397   0.5611529   1.4018676
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9328835   0.5704044   1.5257098
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0182629   0.6641814   1.5611086
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.2061923   0.8903724   1.6340353
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.5004689   1.1406966   1.9737124
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3253728   0.9900249   1.7743119
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9925626   0.6907872   1.4261706
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1352543   0.8265688   1.5592195
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0923317   0.7941137   1.5025412
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8036633   0.6662899   0.9693599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.7116961   0.5623713   0.9006707
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8722313   0.7390081   1.0294709
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7262070   0.5279450   0.9989234
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.6476558   0.4596275   0.9126043
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.6559210   0.4586796   0.9379803


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0517761   -0.1579815    0.0544293
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0087818   -0.0766316    0.0941951
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1234154   -0.2143463   -0.0324844
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0566837   -0.0068179    0.1201853
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0090453   -0.0741482    0.0922389
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0354316   -0.0180982    0.0889614
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0480256   -0.0914320   -0.0046193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0194795   -0.0381305   -0.0008285
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0542432   -0.0941898   -0.0142967
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0981654   -0.2116131    0.0152823
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0167336   -0.0962271    0.1296944
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0256148   -0.1229526    0.0717230
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0043532   -0.0828728    0.0915792
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0637619   -0.1946692    0.0671453
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0134455   -0.0367140    0.0636049
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0593166   -0.0826216   -0.0360115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0021724   -0.0677700    0.0634252
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0039680   -0.1887018    0.1966377
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0136889   -0.1356356    0.1082578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1120113    0.0252449    0.1987777
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0285568   -0.0718930    0.1290067
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0880245   -0.1551359   -0.0209131
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0532116   -0.0964421   -0.0099811


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0819370   -0.2643509    0.0741592
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0148876   -0.1410402    0.1495072
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2121635   -0.3818941   -0.0632800
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0905665   -0.0169125    0.1866859
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0173189   -0.1556543    0.1644022
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0795051   -0.0491517    0.1923849
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0791369   -0.1531393   -0.0098835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0461000   -0.0912125   -0.0028526
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2102434   -0.3740510   -0.0659642
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1454568   -0.3295979    0.0131820
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0262488   -0.1681666    0.1883081
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0325521   -0.1640542    0.0840943
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0062005   -0.1261525    0.1229985
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1093061   -0.3588383    0.0944028
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0182509   -0.0523001    0.0840718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0878338   -0.1230826   -0.0536913
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0038904   -0.1285052    0.1069638
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0070733   -0.4032374    0.2974080
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0265222   -0.2928917    0.1849682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2012956    0.0280908    0.3436335
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0578732   -0.1696445    0.2411344
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1751146   -0.3174760   -0.0481361
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.3564708   -0.6747624   -0.0986712

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

agecat        studyid          country                        hhwealth_quart    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ---------------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       20    324
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       49    324
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       34    324
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45    324
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       35    324
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       64    324
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       31    324
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       46    324
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                   0       68    368
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                   1       55    368
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                   0       44    368
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                   1       43    368
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                   0       44    368
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                   1       33    368
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                   0       48    368
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                   1       33    368
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   0      135   1689
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   1      269   1689
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   0      183   1689
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   1      256   1689
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   0      127   1689
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   1      159   1689
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   0      219   1689
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   1      341   1689
0-24 months   CONTENT          PERU                           Wealth Q4                   0        1      7
0-24 months   CONTENT          PERU                           Wealth Q4                   1        3      7
0-24 months   CONTENT          PERU                           Wealth Q1                   0        0      7
0-24 months   CONTENT          PERU                           Wealth Q1                   1        1      7
0-24 months   CONTENT          PERU                           Wealth Q2                   0        0      7
0-24 months   CONTENT          PERU                           Wealth Q2                   1        2      7
0-24 months   CONTENT          PERU                           Wealth Q3                   0        0      7
0-24 months   CONTENT          PERU                           Wealth Q3                   1        0      7
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   0       78    643
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   1       77    643
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   0       76    643
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   1       79    643
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   0       75    643
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   1       99    643
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   0       67    643
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   1       92    643
0-24 months   IRC              INDIA                          Wealth Q4                   0       44    395
0-24 months   IRC              INDIA                          Wealth Q4                   1       61    395
0-24 months   IRC              INDIA                          Wealth Q1                   0       44    395
0-24 months   IRC              INDIA                          Wealth Q1                   1       60    395
0-24 months   IRC              INDIA                          Wealth Q2                   0       36    395
0-24 months   IRC              INDIA                          Wealth Q2                   1       51    395
0-24 months   IRC              INDIA                          Wealth Q3                   0       38    395
0-24 months   IRC              INDIA                          Wealth Q3                   1       61    395
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   0     1012   7562
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   1      822   7562
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   0     1205   7562
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   1      786   7562
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   0     1092   7562
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   1      771   7562
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   0     1059   7562
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   1      815   7562
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   0      294   2062
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   1      129   2062
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   0      465   2062
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   1      129   2062
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   0      425   2062
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   1      138   2062
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   0      346   2062
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   1      136   2062
0-24 months   LCNI-5           MALAWI                         Wealth Q4                   0        7     78
0-24 months   LCNI-5           MALAWI                         Wealth Q4                   1        3     78
0-24 months   LCNI-5           MALAWI                         Wealth Q1                   0       24     78
0-24 months   LCNI-5           MALAWI                         Wealth Q1                   1        5     78
0-24 months   LCNI-5           MALAWI                         Wealth Q2                   0       19     78
0-24 months   LCNI-5           MALAWI                         Wealth Q2                   1        3     78
0-24 months   LCNI-5           MALAWI                         Wealth Q3                   0       15     78
0-24 months   LCNI-5           MALAWI                         Wealth Q3                   1        2     78
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   0        9    121
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   1       14    121
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   0        7    121
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   1       20    121
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   0       16    121
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   1       25    121
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   0       11    121
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   1       19    121
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                   0        1     24
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                   1       10     24
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                   0        2     24
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                   1        3     24
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                   0        2     24
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                   1        2     24
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                   0        1     24
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                   1        3     24
0-24 months   MAL-ED           INDIA                          Wealth Q4                   0       13    175
0-24 months   MAL-ED           INDIA                          Wealth Q4                   1       19    175
0-24 months   MAL-ED           INDIA                          Wealth Q1                   0       23    175
0-24 months   MAL-ED           INDIA                          Wealth Q1                   1       31    175
0-24 months   MAL-ED           INDIA                          Wealth Q2                   0       16    175
0-24 months   MAL-ED           INDIA                          Wealth Q2                   1       33    175
0-24 months   MAL-ED           INDIA                          Wealth Q3                   0       14    175
0-24 months   MAL-ED           INDIA                          Wealth Q3                   1       26    175
0-24 months   MAL-ED           NEPAL                          Wealth Q4                   0        3     97
0-24 months   MAL-ED           NEPAL                          Wealth Q4                   1       20     97
0-24 months   MAL-ED           NEPAL                          Wealth Q1                   0        6     97
0-24 months   MAL-ED           NEPAL                          Wealth Q1                   1       19     97
0-24 months   MAL-ED           NEPAL                          Wealth Q2                   0        3     97
0-24 months   MAL-ED           NEPAL                          Wealth Q2                   1       11     97
0-24 months   MAL-ED           NEPAL                          Wealth Q3                   0        7     97
0-24 months   MAL-ED           NEPAL                          Wealth Q3                   1       28     97
0-24 months   MAL-ED           PERU                           Wealth Q4                   0        1     34
0-24 months   MAL-ED           PERU                           Wealth Q4                   1        8     34
0-24 months   MAL-ED           PERU                           Wealth Q1                   0        2     34
0-24 months   MAL-ED           PERU                           Wealth Q1                   1        6     34
0-24 months   MAL-ED           PERU                           Wealth Q2                   0        0     34
0-24 months   MAL-ED           PERU                           Wealth Q2                   1        5     34
0-24 months   MAL-ED           PERU                           Wealth Q3                   0        3     34
0-24 months   MAL-ED           PERU                           Wealth Q3                   1        9     34
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   0        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   1       17     80
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   0        3     80
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   1       17     80
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   0        6     80
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   1       19     80
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   0        4     80
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   1       14     80
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        8     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        8     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       14     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        5     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       12     51
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   0       39    308
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   1       45    308
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   0       24    308
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   1       54    308
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   0       31    308
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   1       37    308
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   0       35    308
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   1       43    308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       81    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      105    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       77    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      124    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       44    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      105    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       64    711
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      111    711
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    201
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       35    201
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       20    201
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       27    201
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       21    201
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       40    201
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       15    201
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       33    201
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                   0       18    207
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                   1       54    207
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                   0        9    207
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                   1       41    207
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                   0        7    207
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                   1       29    207
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                   0       17    207
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                   1       32    207
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                   0       59    752
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                   1      160    752
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                   0       52    752
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                   1      137    752
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                   0       32    752
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                   1       89    752
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                   0       55    752
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                   1      168    752
0-6 months    CONTENT          PERU                           Wealth Q4                   0        0      4
0-6 months    CONTENT          PERU                           Wealth Q4                   1        1      4
0-6 months    CONTENT          PERU                           Wealth Q1                   0        0      4
0-6 months    CONTENT          PERU                           Wealth Q1                   1        1      4
0-6 months    CONTENT          PERU                           Wealth Q2                   0        0      4
0-6 months    CONTENT          PERU                           Wealth Q2                   1        2      4
0-6 months    CONTENT          PERU                           Wealth Q3                   0        0      4
0-6 months    CONTENT          PERU                           Wealth Q3                   1        0      4
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                   0       26    263
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                   1       35    263
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                   0       26    263
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                   1       37    263
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                   0       27    263
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                   1       44    263
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                   0       25    263
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                   1       43    263
0-6 months    IRC              INDIA                          Wealth Q4                   0       22    240
0-6 months    IRC              INDIA                          Wealth Q4                   1       36    240
0-6 months    IRC              INDIA                          Wealth Q1                   0       23    240
0-6 months    IRC              INDIA                          Wealth Q1                   1       40    240
0-6 months    IRC              INDIA                          Wealth Q2                   0       21    240
0-6 months    IRC              INDIA                          Wealth Q2                   1       36    240
0-6 months    IRC              INDIA                          Wealth Q3                   0       21    240
0-6 months    IRC              INDIA                          Wealth Q3                   1       41    240
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                   0      318   4730
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                   1      822   4730
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                   0      468   4730
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                   1      786   4730
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                   0      404   4730
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                   1      771   4730
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                   0      346   4730
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                   1      815   4730
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                   0       52    548
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                   1       80    548
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                   0       71    548
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                   1       71    548
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                   0       64    548
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                   1       71    548
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                   0       55    548
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                   1       84    548
0-6 months    LCNI-5           MALAWI                         Wealth Q4                   0        0      4
0-6 months    LCNI-5           MALAWI                         Wealth Q4                   1        0      4
0-6 months    LCNI-5           MALAWI                         Wealth Q1                   0        3      4
0-6 months    LCNI-5           MALAWI                         Wealth Q1                   1        0      4
0-6 months    LCNI-5           MALAWI                         Wealth Q2                   0        0      4
0-6 months    LCNI-5           MALAWI                         Wealth Q2                   1        0      4
0-6 months    LCNI-5           MALAWI                         Wealth Q3                   0        1      4
0-6 months    LCNI-5           MALAWI                         Wealth Q3                   1        0      4
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                   0        4     60
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                   1       10     60
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                   0        2     60
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                   1       11     60
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                   0        3     60
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                   1       13     60
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                   0        3     60
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                   1       14     60
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                   0        0     15
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                   1        8     15
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                   0        1     15
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                   1        3     15
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                   0        0     15
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                   1        2     15
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                   0        0     15
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                   1        1     15
0-6 months    MAL-ED           INDIA                          Wealth Q4                   0        6     80
0-6 months    MAL-ED           INDIA                          Wealth Q4                   1        8     80
0-6 months    MAL-ED           INDIA                          Wealth Q1                   0        7     80
0-6 months    MAL-ED           INDIA                          Wealth Q1                   1       14     80
0-6 months    MAL-ED           INDIA                          Wealth Q2                   0        5     80
0-6 months    MAL-ED           INDIA                          Wealth Q2                   1       19     80
0-6 months    MAL-ED           INDIA                          Wealth Q3                   0        4     80
0-6 months    MAL-ED           INDIA                          Wealth Q3                   1       17     80
0-6 months    MAL-ED           NEPAL                          Wealth Q4                   0        2     47
0-6 months    MAL-ED           NEPAL                          Wealth Q4                   1       13     47
0-6 months    MAL-ED           NEPAL                          Wealth Q1                   0        3     47
0-6 months    MAL-ED           NEPAL                          Wealth Q1                   1       12     47
0-6 months    MAL-ED           NEPAL                          Wealth Q2                   0        1     47
0-6 months    MAL-ED           NEPAL                          Wealth Q2                   1        7     47
0-6 months    MAL-ED           NEPAL                          Wealth Q3                   0        2     47
0-6 months    MAL-ED           NEPAL                          Wealth Q3                   1        7     47
0-6 months    MAL-ED           PERU                           Wealth Q4                   0        0     10
0-6 months    MAL-ED           PERU                           Wealth Q4                   1        2     10
0-6 months    MAL-ED           PERU                           Wealth Q1                   0        0     10
0-6 months    MAL-ED           PERU                           Wealth Q1                   1        2     10
0-6 months    MAL-ED           PERU                           Wealth Q2                   0        0     10
0-6 months    MAL-ED           PERU                           Wealth Q2                   1        2     10
0-6 months    MAL-ED           PERU                           Wealth Q3                   0        0     10
0-6 months    MAL-ED           PERU                           Wealth Q3                   1        4     10
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                   0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                   1        7     29
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                   0        2     29
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                   1        7     29
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                   0        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                   1        6     29
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                   0        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                   1        5     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        3     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2     14
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                   0       13    185
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                   1       38    185
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                   0       11    185
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                   1       40    185
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                   0        6    185
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                   1       32    185
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                   0       10    185
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                   1       35    185
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       26    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       61    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       34    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       75    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       43    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       28    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       59    339
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    123
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       14    123
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       14    123
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       18    123
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       14    123
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       24    123
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       16    123
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       13    123
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                   0       50    161
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                   1        1    161
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                   0       35    161
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                   1        2    161
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                   0       37    161
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                   1        4    161
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                   0       31    161
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                   1        1    161
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   0       76    937
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   1      109    937
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   0      131    937
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   1      119    937
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   0       95    937
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   1       70    937
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   0      164    937
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   1      173    937
6-24 months   CONTENT          PERU                           Wealth Q4                   0        1      3
6-24 months   CONTENT          PERU                           Wealth Q4                   1        2      3
6-24 months   CONTENT          PERU                           Wealth Q1                   0        0      3
6-24 months   CONTENT          PERU                           Wealth Q1                   1        0      3
6-24 months   CONTENT          PERU                           Wealth Q2                   0        0      3
6-24 months   CONTENT          PERU                           Wealth Q2                   1        0      3
6-24 months   CONTENT          PERU                           Wealth Q3                   0        0      3
6-24 months   CONTENT          PERU                           Wealth Q3                   1        0      3
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   0       52    380
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   1       42    380
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   0       50    380
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   1       42    380
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   0       48    380
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   1       55    380
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   0       42    380
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   1       49    380
6-24 months   IRC              INDIA                          Wealth Q4                   0       22    155
6-24 months   IRC              INDIA                          Wealth Q4                   1       25    155
6-24 months   IRC              INDIA                          Wealth Q1                   0       21    155
6-24 months   IRC              INDIA                          Wealth Q1                   1       20    155
6-24 months   IRC              INDIA                          Wealth Q2                   0       15    155
6-24 months   IRC              INDIA                          Wealth Q2                   1       15    155
6-24 months   IRC              INDIA                          Wealth Q3                   0       17    155
6-24 months   IRC              INDIA                          Wealth Q3                   1       20    155
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   0      694   2832
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   1        0   2832
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   0      737   2832
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   1        0   2832
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   0      688   2832
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   1        0   2832
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   0      713   2832
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   1        0   2832
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   0      242   1514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   1       49   1514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   0      394   1514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   1       58   1514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   0      361   1514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   1       67   1514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   0      291   1514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   1       52   1514
6-24 months   LCNI-5           MALAWI                         Wealth Q4                   0        7     74
6-24 months   LCNI-5           MALAWI                         Wealth Q4                   1        3     74
6-24 months   LCNI-5           MALAWI                         Wealth Q1                   0       21     74
6-24 months   LCNI-5           MALAWI                         Wealth Q1                   1        5     74
6-24 months   LCNI-5           MALAWI                         Wealth Q2                   0       19     74
6-24 months   LCNI-5           MALAWI                         Wealth Q2                   1        3     74
6-24 months   LCNI-5           MALAWI                         Wealth Q3                   0       14     74
6-24 months   LCNI-5           MALAWI                         Wealth Q3                   1        2     74
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   0        5     61
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   1        4     61
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   0        5     61
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   1        9     61
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   0       13     61
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   1       12     61
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   0        8     61
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   1        5     61
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                   0        1      9
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                   1        2      9
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                   0        1      9
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                   1        0      9
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                   0        2      9
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                   1        0      9
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                   0        1      9
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                   1        2      9
6-24 months   MAL-ED           INDIA                          Wealth Q4                   0        7     95
6-24 months   MAL-ED           INDIA                          Wealth Q4                   1       11     95
6-24 months   MAL-ED           INDIA                          Wealth Q1                   0       16     95
6-24 months   MAL-ED           INDIA                          Wealth Q1                   1       17     95
6-24 months   MAL-ED           INDIA                          Wealth Q2                   0       11     95
6-24 months   MAL-ED           INDIA                          Wealth Q2                   1       14     95
6-24 months   MAL-ED           INDIA                          Wealth Q3                   0       10     95
6-24 months   MAL-ED           INDIA                          Wealth Q3                   1        9     95
6-24 months   MAL-ED           NEPAL                          Wealth Q4                   0        1     50
6-24 months   MAL-ED           NEPAL                          Wealth Q4                   1        7     50
6-24 months   MAL-ED           NEPAL                          Wealth Q1                   0        3     50
6-24 months   MAL-ED           NEPAL                          Wealth Q1                   1        7     50
6-24 months   MAL-ED           NEPAL                          Wealth Q2                   0        2     50
6-24 months   MAL-ED           NEPAL                          Wealth Q2                   1        4     50
6-24 months   MAL-ED           NEPAL                          Wealth Q3                   0        5     50
6-24 months   MAL-ED           NEPAL                          Wealth Q3                   1       21     50
6-24 months   MAL-ED           PERU                           Wealth Q4                   0        1     24
6-24 months   MAL-ED           PERU                           Wealth Q4                   1        6     24
6-24 months   MAL-ED           PERU                           Wealth Q1                   0        2     24
6-24 months   MAL-ED           PERU                           Wealth Q1                   1        4     24
6-24 months   MAL-ED           PERU                           Wealth Q2                   0        0     24
6-24 months   MAL-ED           PERU                           Wealth Q2                   1        3     24
6-24 months   MAL-ED           PERU                           Wealth Q3                   0        3     24
6-24 months   MAL-ED           PERU                           Wealth Q3                   1        5     24
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   1       10     51
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   0        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   1       10     51
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   0        5     51
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   1       13     51
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   0        3     51
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   1        9     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        5     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        5     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        9     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        4     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       10     37
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   0       26    123
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   1        7    123
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   0       13    123
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   1       14    123
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   0       25    123
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   1        5    123
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   0       25    123
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   1        8    123
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       55    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       44    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       43    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       49    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       31    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       62    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       36    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       52    372


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/ca161639-8ff2-4b88-b2f7-59c9184a19d4/1c33a2f6-6991-4362-b453-3264c3772052/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca161639-8ff2-4b88-b2f7-59c9184a19d4/1c33a2f6-6991-4362-b453-3264c3772052/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca161639-8ff2-4b88-b2f7-59c9184a19d4/1c33a2f6-6991-4362-b453-3264c3772052/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca161639-8ff2-4b88-b2f7-59c9184a19d4/1c33a2f6-6991-4362-b453-3264c3772052/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7434226   0.6282056   0.8586397
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5782638   0.4621124   0.6944152
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6733313   0.5710923   0.7755702
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6223050   0.5057412   0.7388688
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.4018912   0.3264449   0.4773375
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.5010026   0.4109937   0.5910115
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.4738809   0.3899858   0.5577759
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.4264610   0.3377615   0.5151606
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6583620   0.6093617   0.7073622
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5853920   0.5376287   0.6331552
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5671485   0.5032095   0.6310876
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6111438   0.5687132   0.6535743
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4966882   0.4074380   0.5859385
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5220979   0.4328067   0.6113891
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5654708   0.4872952   0.6436463
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5710124   0.4840281   0.6579966
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.5819662   0.4835817   0.6803507
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.5749095   0.4725216   0.6772974
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.5835059   0.4734391   0.6935728
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.6134650   0.5006763   0.7262537
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.4328166   0.4051035   0.4605297
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.4034132   0.3801729   0.4266534
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.4125697   0.3881691   0.4369704
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.4356379   0.4119807   0.4592950
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.2870080   0.2440532   0.3299627
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2189035   0.1860754   0.2517316
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2529331   0.2165492   0.2893170
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2714257   0.2298260   0.3130254
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.6086957   0.3833475   0.8340438
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.7407407   0.5697050   0.9117765
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.6097561   0.4680022   0.7515100
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.6333333   0.4616178   0.8050489
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.5847074   0.3615395   0.8078753
0-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.5734249   0.4330890   0.7137608
0-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.6663584   0.5167860   0.8159307
0-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.6596087   0.4984053   0.8208121
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.5547124   0.4531836   0.6562412
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.6959583   0.5887989   0.8031177
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.5599939   0.4475847   0.6724032
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.5314956   0.4156281   0.6473631
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5703580   0.4968883   0.6438278
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6128350   0.5390795   0.6865905
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7160326   0.6373479   0.7947172
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6302294   0.5512601   0.7091987
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7776577   0.6568427   0.8984727
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5723637   0.4247168   0.7200106
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6566666   0.5322853   0.7810480
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6785180   0.5425430   0.8144930
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7277067   0.6668558   0.7885577
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7277832   0.6660656   0.7895009
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7445509   0.6661416   0.8229601
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7532193   0.6964507   0.8099880
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5643211   0.4353271   0.6933151
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5879333   0.4648879   0.7109786
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6139931   0.4998548   0.7281313
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.6155430   0.4964828   0.7346033
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.6253247   0.4931542   0.7574951
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.6442053   0.5202757   0.7681350
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.6397162   0.5078001   0.7716323
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.6737861   0.5499956   0.7975766
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.7225999   0.6880205   0.7571792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.6550095   0.6256681   0.6843509
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.6613488   0.6302573   0.6924403
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.6950332   0.6640433   0.7260230
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.5694076   0.5023929   0.6364223
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.5191790   0.4508091   0.5875489
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.5480097   0.4639572   0.6320621
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.5981183   0.5183318   0.6779048
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.7450980   0.6225088   0.8676873
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.7843137   0.6686185   0.9000089
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.8421053   0.7388378   0.9453727
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.7777778   0.6629047   0.8926508
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6939197   0.5920181   0.7958212
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6886598   0.5975413   0.7797783
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7545728   0.6380171   0.8711285
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6901136   0.5896299   0.7905973
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6044957   0.3892006   0.8197908
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5644588   0.3682487   0.7606689
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6284801   0.4674785   0.7894818
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4695764   0.2785307   0.6606221
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5904652   0.5171960   0.6637344
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4778158   0.4115210   0.5441105
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4232339   0.3404731   0.5059947
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5116648   0.4556669   0.5676628
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4469882   0.3366397   0.5573367
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4389220   0.3158101   0.5620338
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5237064   0.4261567   0.6212562
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5281442   0.4157376   0.6405507
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.5287494   0.3901168   0.6673819
6-24 months   IRC              INDIA                          Wealth Q1            NA                0.5219147   0.3544544   0.6893751
6-24 months   IRC              INDIA                          Wealth Q2            NA                0.4602642   0.2486077   0.6719207
6-24 months   IRC              INDIA                          Wealth Q3            NA                0.4933729   0.3140559   0.6726898
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1736065   0.1261448   0.2210682
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1177019   0.0879294   0.1474745
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1491931   0.1169248   0.1814614
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1524539   0.1088067   0.1961011
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.6111111   0.3489650   0.8732572
6-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.5151515   0.3205740   0.7097291
6-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.5600000   0.3272521   0.7927479
6-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.4736842   0.2422327   0.7051357
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2121212   0.0730235   0.3512190
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.5185185   0.3110218   0.7260152
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1666667   0.0616627   0.2716706
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.2424242   0.0917710   0.3930775
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4240668   0.3217770   0.5263566
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5116012   0.4023955   0.6208068
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6630954   0.5634487   0.7627420
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5890243   0.4836156   0.6944331


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857665
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4456522   0.3930622   0.4982422
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4223750   0.4112475   0.4335026
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2580019   0.2386523   0.2773515
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6228571   0.5433246   0.7023896
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6752643   0.6619190   0.6886095
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.5583942   0.5167799   0.6000084
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1492734   0.1316631   0.1668838
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7778399   0.6030785   1.0032441
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9057180   0.7296343   1.1242962
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8370811   0.6560367   1.0680876
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2466125   0.9846307   1.5783001
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1791272   0.9393920   1.4800433
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0611354   0.8257881   1.3635561
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8891643   0.7963223   0.9928306
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8614540   0.7526260   0.9860182
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9282793   0.8386081   1.0275389
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0511582   0.8202731   1.3470312
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1384823   0.9078232   1.4277470
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1496394   0.9082695   1.4551526
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9878743   0.7727086   1.2629543
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.0026457   0.7782064   1.2918145
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.0541247   0.8209429   1.3535399
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         0.9320648   0.8563972   1.0144181
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         0.9532206   0.8747478   1.0387331
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0065183   0.9267670   1.0931325
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         0.7627089   0.6195744   0.9389104
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.8812754   0.7191701   1.0799203
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         0.9457079   0.7665670   1.1667126
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.2169312   0.7866441   1.8825814
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.0017422   0.6469992   1.5509871
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.0404762   0.6575813   1.6463223
0-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         0.9807040   0.6230120   1.5437588
0-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.1396441   0.7315091   1.7754922
0-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.1281005   0.7164280   1.7763276
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.2546292   0.9893178   1.5910907
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         1.0095212   0.7773333   1.3110632
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.9581463   0.7244502   1.2672290
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0744742   0.9010891   1.2812216
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.2554089   1.0599619   1.4868946
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1049716   0.9228386   1.3230507
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7360098   0.5441449   0.9955262
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8444161   0.6609445   1.0788175
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8725150   0.6768817   1.1246906
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0001051   0.8880837   1.1262567
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0231469   0.8946777   1.1700632
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0350589   0.9250588   1.1581393
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0418417   0.7642075   1.4203395
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0880207   0.8101154   1.4612600
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0907673   0.8082820   1.4719781
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.0301934   0.7735467   1.3719900
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         1.0230145   0.7617480   1.3738908
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         1.0774980   0.8135258   1.4271237
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         0.9064622   0.8490711   0.9677326
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         0.9152351   0.8559216   0.9786589
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         0.9618506   0.9010277   1.0267794
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         0.9117879   0.7739174   1.0742196
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.9624207   0.8005847   1.1569714
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0504221   0.8875449   1.2431895
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.0526316   0.8439353   1.3129363
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         1.1301939   0.9205243   1.3876204
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.0438596   0.8368004   1.3021539
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9924200   0.8139535   1.2100168
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0874066   0.8787209   1.3456525
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9945151   0.8086212   1.2231442
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9337681   0.5673634   1.5367978
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0396768   0.6688351   1.6161350
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7768068   0.4509555   1.3381118
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8092192   0.6716863   0.9749130
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.7167804   0.5686538   0.9034920
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8665453   0.7344015   1.0224662
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9819543   0.6753837   1.4276836
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1716337   0.8600367   1.5961244
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1815618   0.8534159   1.6358826
6-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9870740   0.6552486   1.4869397
6-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         0.8704770   0.5131595   1.4765978
6-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.9330940   0.5991906   1.4530676
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         0.6779810   0.4672065   0.9838440
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.8593750   0.6064918   1.2177007
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         0.8781576   0.5911002   1.3046195
6-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         0.8429752   0.4759882   1.4929093
6-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         0.9163636   0.5042783   1.6651962
6-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         0.7751196   0.4045501   1.4851322
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         2.4444444   1.1338866   5.2697586
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.7857143   0.3159350   1.9540314
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.1428571   0.4631547   2.8200568
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.2064164   0.8743539   1.6645898
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.5636578   1.1766347   2.0779821
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3889895   1.0279524   1.8768299


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1137930   -0.2182461   -0.0093399
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0437609   -0.0112930    0.0988149
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0514940   -0.0943655   -0.0086225
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0429696   -0.0346622    0.1206014
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0079072   -0.0775629    0.0933772
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0104416   -0.0358897    0.0150065
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0290060   -0.0666746    0.0086625
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0359324   -0.1615889    0.2334538
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0381497   -0.1581698    0.2344693
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0264565   -0.0584795    0.1113925
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0555210   -0.0079389    0.1189810
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1060159   -0.2181458    0.0061140
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0089954   -0.0414512    0.0594420
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0402416   -0.0721612    0.1526445
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.0121753   -0.1024616    0.1268122
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0473356   -0.0799182   -0.0147530
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0110134   -0.0662153    0.0441885
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0386857   -0.0621324    0.1395039
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0081452   -0.0798742    0.0961647
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0435201   -0.2374763    0.1504361
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0877971   -0.1540771   -0.0215171
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0477487   -0.0479730    0.1434703
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0126203   -0.1323764    0.1071358
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0243331   -0.0671243    0.0184582
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0742690   -0.3105292    0.1619912
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0643016   -0.0598472    0.1884503
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1323848    0.0435290    0.2212406


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1807301   -0.3609807   -0.0243521
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0981953   -0.0345847    0.2139341
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0848521   -0.1580004   -0.0163244
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0796238   -0.0764051    0.2130357
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0134049   -0.1426233    0.1481270
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0247211   -0.0867855    0.0337988
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.1124257   -0.2683773    0.0243511
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0557414   -0.3076334    0.3181389
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0612496   -0.3151739    0.3299347
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0455229   -0.1124245    0.1810441
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0887089   -0.0186318    0.1847383
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1578459   -0.3410419    0.0003242
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0122103   -0.0587257    0.0783936
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0665632   -0.1395801    0.2354165
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.0190986   -0.1783427    0.1834568
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0700994   -0.1195495   -0.0228335
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0197234   -0.1236459    0.0745876
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0493577   -0.0889559    0.1701034
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0116018   -0.1220928    0.1293670
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0775793   -0.4854936    0.2183224
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1746622   -0.3152826   -0.0490759
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0965132   -0.1196518    0.2709445
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0244519   -0.2854339    0.1835429
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.1630101   -0.4870991    0.0904490
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.1383442   -0.6772300    0.2274002
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2326203   -0.3708498    0.5704332
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2379090    0.0588324    0.3829125

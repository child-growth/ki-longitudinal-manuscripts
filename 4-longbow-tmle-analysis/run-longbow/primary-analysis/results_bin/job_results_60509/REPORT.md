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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        hhwealth_quart    pers_wast   n_cell       n
------------  ---------------  -----------------------------  ---------------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       93     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       83     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       89     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       85     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        6     373
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                 0      375    1023
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                 1        9    1023
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                 0      199    1023
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                 1        4    1023
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                 0      197    1023
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                 1       11    1023
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                 0      217    1023
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                 1       11    1023
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                 0      754    2811
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                 1       19    2811
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                 0      556    2811
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                 1       48    2811
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                 0      476    2811
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                 1       27    2811
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                 0      881    2811
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                 1       50    2811
0-24 months   CONTENT          PERU                           Wealth Q4                 0       52     215
0-24 months   CONTENT          PERU                           Wealth Q4                 1        0     215
0-24 months   CONTENT          PERU                           Wealth Q1                 0       59     215
0-24 months   CONTENT          PERU                           Wealth Q1                 1        0     215
0-24 months   CONTENT          PERU                           Wealth Q2                 0       52     215
0-24 months   CONTENT          PERU                           Wealth Q2                 1        0     215
0-24 months   CONTENT          PERU                           Wealth Q3                 0       52     215
0-24 months   CONTENT          PERU                           Wealth Q3                 1        0     215
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                 0      132     597
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                 1       17     597
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                 0      123     597
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                 1       25     597
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                 0      137     597
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                 1       20     597
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                 0      125     597
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                 1       18     597
0-24 months   IRC              INDIA                          Wealth Q4                 0       90     410
0-24 months   IRC              INDIA                          Wealth Q4                 1       10     410
0-24 months   IRC              INDIA                          Wealth Q1                 0       95     410
0-24 months   IRC              INDIA                          Wealth Q1                 1       10     410
0-24 months   IRC              INDIA                          Wealth Q2                 0       87     410
0-24 months   IRC              INDIA                          Wealth Q2                 1       15     410
0-24 months   IRC              INDIA                          Wealth Q3                 0       90     410
0-24 months   IRC              INDIA                          Wealth Q3                 1       13     410
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                 0     4505   15796
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                 1      205   15796
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                 0     3107   15796
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                 1      254   15796
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                 0     3440   15796
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                 1      221   15796
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                 0     3847   15796
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                 1      217   15796
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                 0     1234    5279
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                 1       73    5279
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                 0     1191    5279
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                 1      133    5279
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                 0     1199    5279
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                 1      116    5279
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                 0     1229    5279
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                 1      104    5279
0-24 months   LCNI-5           MALAWI                         Wealth Q4                 0      188     715
0-24 months   LCNI-5           MALAWI                         Wealth Q4                 1        1     715
0-24 months   LCNI-5           MALAWI                         Wealth Q1                 0      172     715
0-24 months   LCNI-5           MALAWI                         Wealth Q1                 1        3     715
0-24 months   LCNI-5           MALAWI                         Wealth Q2                 0      176     715
0-24 months   LCNI-5           MALAWI                         Wealth Q2                 1        2     715
0-24 months   LCNI-5           MALAWI                         Wealth Q3                 0      173     715
0-24 months   LCNI-5           MALAWI                         Wealth Q3                 1        0     715
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                 0       57     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                 1        4     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                 0       57     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                 1        3     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                 0       56     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                 1        5     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                 0       59     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                 1        1     242
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                 0       52     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                 1        1     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                 0       52     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                 1        1     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                 0       53     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                 1        0     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                 0       51     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                 1        0     210
0-24 months   MAL-ED           INDIA                          Wealth Q4                 0       55     235
0-24 months   MAL-ED           INDIA                          Wealth Q4                 1        4     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                 0       55     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                 1        5     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                 0       52     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                 1        6     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                 0       53     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                 1        5     235
0-24 months   MAL-ED           NEPAL                          Wealth Q4                 0       58     236
0-24 months   MAL-ED           NEPAL                          Wealth Q4                 1        1     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                 0       58     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                 1        1     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                 0       59     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                 1        0     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                 0       58     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                 1        1     236
0-24 months   MAL-ED           PERU                           Wealth Q4                 0       68     271
0-24 months   MAL-ED           PERU                           Wealth Q4                 1        0     271
0-24 months   MAL-ED           PERU                           Wealth Q1                 0       68     271
0-24 months   MAL-ED           PERU                           Wealth Q1                 1        0     271
0-24 months   MAL-ED           PERU                           Wealth Q2                 0       71     271
0-24 months   MAL-ED           PERU                           Wealth Q2                 1        0     271
0-24 months   MAL-ED           PERU                           Wealth Q3                 0       63     271
0-24 months   MAL-ED           PERU                           Wealth Q3                 1        1     271
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                 0       64     256
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                 1        0     256
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                 0       64     256
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                 1        0     256
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                 0       63     256
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                 1        1     256
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                 0       63     256
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                 1        1     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       63     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       63     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       62     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       62     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     250
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                 0      142     641
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                 1        4     641
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                 0      162     641
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                 1        4     641
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                 0      167     641
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                 1        3     641
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                 0      155     641
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                 1        4     641
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521    2157
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14    2157
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       86     358
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        6     358
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       75     358
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                 1       12     358
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       72     358
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                 1       18     358
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       75     358
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                 1       14     358
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                 0      210     853
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                 1       13     853
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                 0      174     853
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                 1       16     853
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                 0      144     853
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                 1        9     853
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                 0      273     853
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                 1       14     853
0-6 months    CONTENT          PERU                           Wealth Q4                 0       52     215
0-6 months    CONTENT          PERU                           Wealth Q4                 1        0     215
0-6 months    CONTENT          PERU                           Wealth Q1                 0       59     215
0-6 months    CONTENT          PERU                           Wealth Q1                 1        0     215
0-6 months    CONTENT          PERU                           Wealth Q2                 0       52     215
0-6 months    CONTENT          PERU                           Wealth Q2                 1        0     215
0-6 months    CONTENT          PERU                           Wealth Q3                 0       52     215
0-6 months    CONTENT          PERU                           Wealth Q3                 1        0     215
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                 0      125     567
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                 1       13     567
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                 0      125     567
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                 1       15     567
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                 0      134     567
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                 1       18     567
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                 0      121     567
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                 1       16     567
0-6 months    IRC              INDIA                          Wealth Q4                 0       84     402
0-6 months    IRC              INDIA                          Wealth Q4                 1       14     402
0-6 months    IRC              INDIA                          Wealth Q1                 0       86     402
0-6 months    IRC              INDIA                          Wealth Q1                 1       17     402
0-6 months    IRC              INDIA                          Wealth Q2                 0       85     402
0-6 months    IRC              INDIA                          Wealth Q2                 1       16     402
0-6 months    IRC              INDIA                          Wealth Q3                 0       83     402
0-6 months    IRC              INDIA                          Wealth Q3                 1       17     402
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                 0       17      50
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                 1        0      50
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                 0        7      50
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                 1        1      50
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                 0       15      50
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                 1        0      50
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                 0        9      50
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                 1        1      50
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                 0       58     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                 1        3     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                 0       59     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                 1        1     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                 0       59     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                 1        2     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                 0       59     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                 1        1     242
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                 0       53     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                 1        0     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                 0       52     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                 1        1     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                 0       53     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                 1        0     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                 0       51     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                 1        0     210
0-6 months    MAL-ED           INDIA                          Wealth Q4                 0       54     234
0-6 months    MAL-ED           INDIA                          Wealth Q4                 1        4     234
0-6 months    MAL-ED           INDIA                          Wealth Q1                 0       55     234
0-6 months    MAL-ED           INDIA                          Wealth Q1                 1        5     234
0-6 months    MAL-ED           INDIA                          Wealth Q2                 0       51     234
0-6 months    MAL-ED           INDIA                          Wealth Q2                 1        7     234
0-6 months    MAL-ED           INDIA                          Wealth Q3                 0       56     234
0-6 months    MAL-ED           INDIA                          Wealth Q3                 1        2     234
0-6 months    MAL-ED           NEPAL                          Wealth Q4                 0       57     236
0-6 months    MAL-ED           NEPAL                          Wealth Q4                 1        2     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                 0       57     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                 1        2     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                 0       59     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                 1        0     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                 0       57     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                 1        2     236
0-6 months    MAL-ED           PERU                           Wealth Q4                 0       68     271
0-6 months    MAL-ED           PERU                           Wealth Q4                 1        0     271
0-6 months    MAL-ED           PERU                           Wealth Q1                 0       68     271
0-6 months    MAL-ED           PERU                           Wealth Q1                 1        0     271
0-6 months    MAL-ED           PERU                           Wealth Q2                 0       71     271
0-6 months    MAL-ED           PERU                           Wealth Q2                 1        0     271
0-6 months    MAL-ED           PERU                           Wealth Q3                 0       64     271
0-6 months    MAL-ED           PERU                           Wealth Q3                 1        0     271
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                 0       64     255
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                 1        0     255
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                 0       62     255
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                 1        1     255
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                 0       64     255
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                 1        0     255
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                 0       63     255
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                 1        1     255
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       63     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       63     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       62     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       62     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     250
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                 0      143     638
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                 1        2     638
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                 0      161     638
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                 1        5     638
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                 0      167     638
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                 1        2     638
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                 0      153     638
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                 1        5     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      496    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       11    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      602    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       21    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      408    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      495    2053
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       13    2053
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       93     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        3     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       83     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        8     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       89     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        6     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       85     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        6     373
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                 0      375    1023
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                 1        9    1023
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                 0      199    1023
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                 1        4    1023
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                 0      197    1023
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                 1       11    1023
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                 0      217    1023
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                 1       11    1023
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                 0      754    2811
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                 1       19    2811
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                 0      556    2811
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                 1       48    2811
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                 0      476    2811
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                 1       27    2811
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                 0      881    2811
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                 1       50    2811
6-24 months   CONTENT          PERU                           Wealth Q4                 0       52     215
6-24 months   CONTENT          PERU                           Wealth Q4                 1        0     215
6-24 months   CONTENT          PERU                           Wealth Q1                 0       59     215
6-24 months   CONTENT          PERU                           Wealth Q1                 1        0     215
6-24 months   CONTENT          PERU                           Wealth Q2                 0       52     215
6-24 months   CONTENT          PERU                           Wealth Q2                 1        0     215
6-24 months   CONTENT          PERU                           Wealth Q3                 0       52     215
6-24 months   CONTENT          PERU                           Wealth Q3                 1        0     215
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                 0      132     597
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                 1       17     597
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                 0      123     597
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                 1       25     597
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                 0      137     597
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                 1       20     597
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                 0      125     597
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                 1       18     597
6-24 months   IRC              INDIA                          Wealth Q4                 0       90     410
6-24 months   IRC              INDIA                          Wealth Q4                 1       10     410
6-24 months   IRC              INDIA                          Wealth Q1                 0       95     410
6-24 months   IRC              INDIA                          Wealth Q1                 1       10     410
6-24 months   IRC              INDIA                          Wealth Q2                 0       87     410
6-24 months   IRC              INDIA                          Wealth Q2                 1       15     410
6-24 months   IRC              INDIA                          Wealth Q3                 0       90     410
6-24 months   IRC              INDIA                          Wealth Q3                 1       13     410
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                 0     4505   15796
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                 1      205   15796
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                 0     3107   15796
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                 1      254   15796
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                 0     3440   15796
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                 1      221   15796
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                 0     3847   15796
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                 1      217   15796
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                 0     1234    5279
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                 1       73    5279
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                 0     1191    5279
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                 1      133    5279
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                 0     1199    5279
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                 1      116    5279
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                 0     1229    5279
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                 1      104    5279
6-24 months   LCNI-5           MALAWI                         Wealth Q4                 0      188     715
6-24 months   LCNI-5           MALAWI                         Wealth Q4                 1        1     715
6-24 months   LCNI-5           MALAWI                         Wealth Q1                 0      172     715
6-24 months   LCNI-5           MALAWI                         Wealth Q1                 1        3     715
6-24 months   LCNI-5           MALAWI                         Wealth Q2                 0      176     715
6-24 months   LCNI-5           MALAWI                         Wealth Q2                 1        2     715
6-24 months   LCNI-5           MALAWI                         Wealth Q3                 0      173     715
6-24 months   LCNI-5           MALAWI                         Wealth Q3                 1        0     715
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                 0       57     242
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                 1        4     242
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                 0       57     242
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                 1        3     242
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                 0       56     242
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                 1        5     242
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                 0       59     242
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                 1        1     242
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                 0       52     210
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                 1        1     210
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                 0       52     210
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                 1        1     210
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                 0       53     210
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                 1        0     210
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                 0       51     210
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                 1        0     210
6-24 months   MAL-ED           INDIA                          Wealth Q4                 0       55     235
6-24 months   MAL-ED           INDIA                          Wealth Q4                 1        4     235
6-24 months   MAL-ED           INDIA                          Wealth Q1                 0       55     235
6-24 months   MAL-ED           INDIA                          Wealth Q1                 1        5     235
6-24 months   MAL-ED           INDIA                          Wealth Q2                 0       52     235
6-24 months   MAL-ED           INDIA                          Wealth Q2                 1        6     235
6-24 months   MAL-ED           INDIA                          Wealth Q3                 0       53     235
6-24 months   MAL-ED           INDIA                          Wealth Q3                 1        5     235
6-24 months   MAL-ED           NEPAL                          Wealth Q4                 0       58     236
6-24 months   MAL-ED           NEPAL                          Wealth Q4                 1        1     236
6-24 months   MAL-ED           NEPAL                          Wealth Q1                 0       58     236
6-24 months   MAL-ED           NEPAL                          Wealth Q1                 1        1     236
6-24 months   MAL-ED           NEPAL                          Wealth Q2                 0       59     236
6-24 months   MAL-ED           NEPAL                          Wealth Q2                 1        0     236
6-24 months   MAL-ED           NEPAL                          Wealth Q3                 0       58     236
6-24 months   MAL-ED           NEPAL                          Wealth Q3                 1        1     236
6-24 months   MAL-ED           PERU                           Wealth Q4                 0       68     271
6-24 months   MAL-ED           PERU                           Wealth Q4                 1        0     271
6-24 months   MAL-ED           PERU                           Wealth Q1                 0       68     271
6-24 months   MAL-ED           PERU                           Wealth Q1                 1        0     271
6-24 months   MAL-ED           PERU                           Wealth Q2                 0       71     271
6-24 months   MAL-ED           PERU                           Wealth Q2                 1        0     271
6-24 months   MAL-ED           PERU                           Wealth Q3                 0       63     271
6-24 months   MAL-ED           PERU                           Wealth Q3                 1        1     271
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                 0       64     256
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                 1        0     256
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                 0       64     256
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                 1        0     256
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                 0       63     256
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                 1        1     256
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                 0       63     256
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                 1        1     256
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       63     250
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     250
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       63     250
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     250
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       62     250
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     250
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       62     250
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     250
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                 0      142     641
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                 1        4     641
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                 0      162     641
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                 1        4     641
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                 0      167     641
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                 1        3     641
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                 0      155     641
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                 1        4     641
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521    2157
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14    2157


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/9df37fb6-3235-43d5-b561-ef605cb8b9e9/9b6537ac-34fe-4f41-b4be-802b2adab431/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9df37fb6-3235-43d5-b561-ef605cb8b9e9/9b6537ac-34fe-4f41-b4be-802b2adab431/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9df37fb6-3235-43d5-b561-ef605cb8b9e9/9b6537ac-34fe-4f41-b4be-802b2adab431/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9df37fb6-3235-43d5-b561-ef605cb8b9e9/9b6537ac-34fe-4f41-b4be-802b2adab431/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0247808   0.0137489   0.0358128
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0839535   0.0618905   0.1060165
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0524963   0.0329706   0.0720220
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0530263   0.0385597   0.0674928
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1102636   0.0579804   0.1625467
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1576947   0.0965288   0.2188606
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1222567   0.0695099   0.1750035
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1236920   0.0688627   0.1785213
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.1030310   0.0428611   0.1632010
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.0992398   0.0428930   0.1555866
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.1454579   0.0764625   0.2144532
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.1294038   0.0649626   0.1938450
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0483045   0.0385522   0.0580567
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0641029   0.0531606   0.0750452
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0612406   0.0511381   0.0713432
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0580986   0.0486699   0.0675273
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0732172   0.0534717   0.0929627
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0919984   0.0721765   0.1118202
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0861140   0.0694181   0.1028100
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0814837   0.0617134   0.1012540
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0652174   0.0146933   0.1157415
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1379310   0.0653709   0.2104911
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2000000   0.1172450   0.2827550
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1573034   0.0815564   0.2330503
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0582960   0.0275260   0.0890659
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0842105   0.0447005   0.1237205
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0588235   0.0215184   0.0961286
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0487805   0.0238446   0.0737164
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0980553   0.0467098   0.1494008
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1093410   0.0564375   0.1622445
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1165794   0.0636056   0.1695531
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1137525   0.0598291   0.1676759
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.1376052   0.0683095   0.2069009
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.1601418   0.0865743   0.2337092
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.1663634   0.0961431   0.2365836
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.1672298   0.0937417   0.2407180
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0216963   0.0090116   0.0343809
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0337079   0.0195326   0.0478831
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0168675   0.0044749   0.0292600
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0255906   0.0118554   0.0393257
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0249417   0.0138847   0.0359987
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0845860   0.0624821   0.1066899
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0517135   0.0323730   0.0710541
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0534570   0.0389568   0.0679572
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1169648   0.0659581   0.1679714
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1706091   0.1102091   0.2310092
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1303577   0.0784616   0.1822537
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1314320   0.0762840   0.1865800
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.0970433   0.0373347   0.1567520
6-24 months   IRC              INDIA                          Wealth Q1            NA                0.0946042   0.0379316   0.1512769
6-24 months   IRC              INDIA                          Wealth Q2            NA                0.1469150   0.0775007   0.2163293
6-24 months   IRC              INDIA                          Wealth Q3            NA                0.1224170   0.0583195   0.1865145
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0478711   0.0381881   0.0575542
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0610275   0.0510871   0.0709679
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0611972   0.0506738   0.0717206
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0569089   0.0482896   0.0655283
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0697939   0.0497820   0.0898058
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0942892   0.0738555   0.1147228
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0878193   0.0707573   0.1048813
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0790540   0.0602839   0.0978242
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567865   0.0526703   0.0609027
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0806971   0.0720842   0.0893100
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567865   0.0526703   0.0609027
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0806971   0.0720842   0.0893100
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.3878399   2.0201766   5.681414
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1184242   1.1860297   3.783819
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1398095   1.2693536   3.607178
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4301614   0.7757989   2.636459
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1087677   0.5837754   2.105888
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1217848   0.5860095   2.147407
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9632030   0.4265404   2.175081
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.4117869   0.6642431   3.000622
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.2559691   0.5825893   2.707668
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.3270585   1.0238130   1.720123
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.2678044   0.9813647   1.637850
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.2027587   0.9238988   1.565787
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.2565132   0.8968161   1.760478
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1761452   0.8435976   1.639784
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1129038   0.7730273   1.602214
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154844   0.2840630   1.802128
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1149425   0.8291086   5.394929
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.0666667   1.2741917   7.380714
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4119850   0.9687855   6.005119
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4445344   0.7128959   2.927047
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0090498   0.4421567   2.302761
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8367730   0.4013236   1.744699
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1150948   0.5464356   2.275540
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1889146   0.5944215   2.377972
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1600853   0.5725464   2.350548
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.1637767   0.5892345   2.298535
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         1.2089903   0.6266682   2.332427
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         1.2152867   0.6231727   2.370004
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5536261   0.7560946   3.192397
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774370   0.3040121   1.988106
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1794918   0.5333532   2.608404
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.3913463   2.0271063   5.673718
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.0733754   1.1608316   3.703281
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1432773   1.2745099   3.604238
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4586372   0.8324832   2.555754
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1145037   0.6172295   2.012409
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1236888   0.6135289   2.058056
6-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9748660   0.4134573   2.298577
6-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.5139112   0.6956619   3.294599
6-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.2614675   0.5617364   2.832823
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.2748285   0.9865514   1.647342
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.2783741   0.9861041   1.657269
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1887939   0.9194178   1.537093
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.3509656   0.9515152   1.918107
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.2582664   0.8896178   1.779679
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1326780   0.7816106   1.641430
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154844   0.2840630   1.802128
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0264465    0.0154066   0.0374864
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0237398   -0.0226177   0.0700973
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.0140421   -0.0394970   0.0675813
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0084820   -0.0004440   0.0174081
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0074799   -0.0112359   0.0261957
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0744474    0.0241121   0.1247827
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0026653   -0.0239778   0.0293084
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0112921   -0.0343539   0.0569381
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.0215987   -0.0396955   0.0828930
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0036325   -0.0076655   0.0149306
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0262856    0.0152276   0.0373436
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0170386   -0.0282357   0.0623128
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.0200298   -0.0331798   0.0732395
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0089154    0.0000416   0.0177892
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0109032   -0.0079732   0.0297795
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5162575    0.2682485   0.6802100
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1771581   -0.2521934   0.4592938
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.1199434   -0.4781320   0.4760280
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1493672   -0.0234602   0.2930099
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0926913   -0.1704741   0.2966874
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5330435    0.0379996   0.7733386
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0437220   -0.5101151   0.3944385
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1032684   -0.4276837   0.4367607
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.1356671   -0.3486818   0.4460730
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1434153   -0.4391887   0.4901729
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5131171    0.2647837   0.6775712
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1271505   -0.2838587   0.4065809
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.1710882   -0.4326000   0.5203861
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1569982   -0.0148266   0.2997305
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1351126   -0.1323272   0.3393868
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983

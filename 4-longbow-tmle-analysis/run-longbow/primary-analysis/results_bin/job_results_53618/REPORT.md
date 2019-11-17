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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        hhwealth_quart    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       56     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       47     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        1     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       44     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        2     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       46     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        5     201
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       10      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       20      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       16      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       11      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        0      57
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               0        8      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       13      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               0        9      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               0        9      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        0      39
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        5      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        1      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        3      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      25
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               0       53     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               0       55     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               0       51     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               0       51     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       17      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       26      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       24      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       28      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       23     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       26     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       30     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       33     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0     112
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       31      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       13      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       19      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       22      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        0      86
Birth       ki1000108-IRC              INDIA                          Wealth Q4               0       72     343
Birth       ki1000108-IRC              INDIA                          Wealth Q4               1        7     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1               0       69     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1               1       21     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2               0       71     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2               1       12     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3               0       77     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3               1       14     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      130     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        2     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      122     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        7     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      136     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        0     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      131     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        4     532
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      158     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        3     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      156     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        8     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      154     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        6     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      146     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       10     641
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      232     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       26     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      132     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       12     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      134     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        7     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      174     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       12     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      769    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       46    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      618    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       29    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      491    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       15    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      899    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       31    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4427   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1       78   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     4335   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      100   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     4395   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1       81   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     4488   17994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1       90   17994
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      567    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1        5    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      550    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       10    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      608    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1        9    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      638    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1        7    2394
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       60     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       60     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       58     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       57     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        3     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       58     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       56     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        2     235
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0       67     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0       68     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0       71     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0       64     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       62     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       59     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       62     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       63     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       61     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       60     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       84     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        6     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       89     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       88     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        2     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       95     408
6 months    ki1000108-IRC              INDIA                          Wealth Q4               1        5     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1               0      101     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1               1        3     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       97     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2               1        5     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       93     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3               1        9     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      134     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        0     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      154     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      163     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      147     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        2     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      499    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        2    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      598    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        7    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      408    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        1    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      502    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        2    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      139     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        1     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      140     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        1     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      145     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        3     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      133     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        2     564
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        0     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      337     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1        2     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      176     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1        0     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      192     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        2     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      215     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1        2     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      736    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1        8    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      559    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       10    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      479    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1        6    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      897    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       11    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        0     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1        0     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1        0     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      197     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        0     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4908   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1       63   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3538   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1       47   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3839   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1       63   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     4262   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1       56   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1195    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1        4    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1186    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       13    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1190    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       11    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1223    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1        5    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       60     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               0       53     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               0       39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               0       51     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3               1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       58     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       52     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       57     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       58     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       59     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       59     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0       65     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0       41     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0       38     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0       55     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       49     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       63     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       62     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       61     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       90     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       94     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       90     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        1     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       99     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4               1        1     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               0      105     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               1        0     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       99     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               1        2     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               0      101     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               1        2     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      118     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        4     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      153     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        2     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      157     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        0     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      142     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        3     579
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      121     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        3     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      116     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        5     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      123     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        5     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      112     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        2     487
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        0     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      403    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1        2    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      203    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1        0    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      214    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        1    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      222    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1        1    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      681    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1        4    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      488    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1        4    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      422    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1        2    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      833    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       15    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      155     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        0     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      127     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1        0     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      139     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1        1     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      136     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        0     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     2279    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1       72    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     1900    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1       96    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     2016    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1       87    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     2066    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1       78    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1163    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       24    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1120    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       33    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1134    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       35    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1184    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       37    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/8d197da8-8de6-49bc-ada1-e6340bec3803/abb48007-13b7-4c65-b43b-13a67764ecc9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d197da8-8de6-49bc-ada1-e6340bec3803/abb48007-13b7-4c65-b43b-13a67764ecc9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d197da8-8de6-49bc-ada1-e6340bec3803/abb48007-13b7-4c65-b43b-13a67764ecc9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d197da8-8de6-49bc-ada1-e6340bec3803/abb48007-13b7-4c65-b43b-13a67764ecc9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Wealth Q4            NA                0.0886076    0.0258514   0.1513638
Birth       ki1000108-IRC       INDIA         Wealth Q1            NA                0.2333333    0.1458244   0.3208423
Birth       ki1000108-IRC       INDIA         Wealth Q2            NA                0.1445783    0.0688105   0.2203461
Birth       ki1000108-IRC       INDIA         Wealth Q3            NA                0.1538462    0.0796076   0.2280847
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q4            NA                0.1007752    0.0640176   0.1375328
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q1            NA                0.0833333    0.0381602   0.1285064
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q2            NA                0.0496454    0.0137682   0.0855226
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q3            NA                0.0645161    0.0291863   0.0998460
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                0.0532281    0.0376494   0.0688069
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q1            NA                0.0457887    0.0296042   0.0619732
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q2            NA                0.0315648    0.0165293   0.0466003
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q3            NA                0.0341600    0.0225527   0.0457672
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                0.0201757    0.0170100   0.0233414
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            NA                0.0203836    0.0174881   0.0232791
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            NA                0.0188752    0.0159883   0.0217621
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            NA                0.0192929    0.0163844   0.0222015
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                0.0087413    0.0010883   0.0163942
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q1            NA                0.0178571    0.0059026   0.0298117
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q2            NA                0.0145867    0.0061829   0.0229906
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q3            NA                0.0108527   -0.0030676   0.0247731
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                0.0107527    0.0033404   0.0181650
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q1            NA                0.0175747    0.0067761   0.0283733
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q2            NA                0.0123711    0.0025319   0.0222103
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q3            NA                0.0121145    0.0049976   0.0192315
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                0.0125801    0.0088735   0.0162867
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            NA                0.0128825    0.0090603   0.0167047
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            NA                0.0158312    0.0112136   0.0204489
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            NA                0.0134009    0.0097441   0.0170578
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                0.0319430    0.0247505   0.0391354
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            NA                0.0457587    0.0362390   0.0552784
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            NA                0.0417158    0.0312758   0.0521559
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            NA                0.0364746    0.0276288   0.0453204
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                0.0213105    0.0103423   0.0322788
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q1            NA                0.0282726    0.0185553   0.0379898
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q2            NA                0.0298229    0.0204618   0.0391840
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q3            NA                0.0293086    0.0180532   0.0405640


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0781893   0.0586874   0.0976912
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0417529   0.0344692   0.0490367
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0193954   0.0169846   0.0218061
Birth       kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0129490   0.0075258   0.0183723
6 months    ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0136505   0.0115778   0.0157231
24 months   kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0387480   0.0344217   0.0430742
24 months   kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0272727   0.0220640   0.0324815


### Parameter: RR


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA         Wealth Q1            Wealth Q4         2.6333330   1.1815568   5.868903
Birth       ki1000108-IRC       INDIA         Wealth Q2            Wealth Q4         1.6316693   0.6760758   3.937938
Birth       ki1000108-IRC       INDIA         Wealth Q3            Wealth Q4         1.7362635   0.7369189   4.090831
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         0.8269231   0.4302403   1.589348
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         0.4926350   0.2192618   1.106847
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.6401985   0.3315606   1.236136
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.8602348   0.5440303   1.360226
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.5930100   0.3394117   1.036089
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.6417654   0.4104377   1.003472
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            Wealth Q4         1.0103040   0.8771881   1.163621
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            Wealth Q4         0.9355407   0.8012517   1.092336
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            Wealth Q4         0.9562455   0.8251334   1.108191
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q1            Wealth Q4         2.0428571   0.6744880   6.187308
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q2            Wealth Q4         1.6687196   0.5835866   4.771572
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q3            Wealth Q4         1.2415504   0.2617888   5.888133
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.6344464   0.6491256   4.115405
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.1505155   0.4016045   3.295993
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.1266520   0.4554533   2.786992
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            Wealth Q4         1.0240372   0.6736083   1.556768
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            Wealth Q4         1.2584348   0.8391453   1.887228
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            Wealth Q4         1.0652488   0.7206888   1.574542
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            Wealth Q4         1.4325127   1.0564366   1.942466
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            Wealth Q4         1.3059470   0.9333624   1.827262
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            Wealth Q4         1.1418663   0.8190903   1.591838
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q1            Wealth Q4         1.3266950   0.7164908   2.456584
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q2            Wealth Q4         1.3994431   0.7635467   2.564926
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q3            Wealth Q4         1.3753101   0.7206135   2.624816


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Wealth Q4            NA                 0.0688268    0.0087091   0.1289445
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q4            NA                -0.0225859   -0.0504264   0.0052547
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0114752   -0.0239995   0.0010491
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                -0.0007804   -0.0027816   0.0012209
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                 0.0042078   -0.0035932   0.0120088
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0021815   -0.0043653   0.0087283
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.0010703   -0.0019839   0.0041246
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.0068050    0.0000715   0.0135385
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                 0.0059622   -0.0034906   0.0154149


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC       INDIA         Wealth Q4            NA                 0.4371776   -0.0857091    0.7082377
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q4            NA                -0.2888617   -0.6914201    0.0178877
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                -0.2748356   -0.6069338   -0.0113707
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                -0.0402340   -0.1487217    0.0580078
Birth       kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                 0.3249492   -0.5605657    0.7079946
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                 0.1686636   -0.5227820    0.5461463
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.0784111   -0.1753789    0.2774023
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.1756220   -0.0140472    0.3298151
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                 0.2186134   -0.2240254    0.5011827

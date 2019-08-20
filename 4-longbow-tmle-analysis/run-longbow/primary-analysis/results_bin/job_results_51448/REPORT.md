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

agecat        studyid                    country                        hhwealth_quart    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       20      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       16      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        3      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       15      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        2      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       17      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        0      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0      36
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       93     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       83     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       89     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       85     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        6     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 0       90     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 1       10     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 0       95     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 1       10     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 0       87     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 1       15     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 0       90     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 1       13     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      165     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        2     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      151     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        5     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      150     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        5     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        3     638
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14    2157
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      130     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       18     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      125     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       26     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      127     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       21     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      125     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       20     592
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 0       59     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 1        0     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 0      375    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 1        9    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 0      199    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 1        4    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 0      197    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 1       11    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 0      217    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 1       11    1023
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      754    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       19    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      556    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       48    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      476    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1       27    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      881    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       50    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 0      188     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 1        1     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 0      172     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 1        3     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 0      176     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 1        2     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 0      173     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 1        0     715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0     4219   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1      198   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0     3169   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1      253   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0     3653   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1      236   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0     3734   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1      210   15672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0     1178    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1       63    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0     1198    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1      136    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0     1192    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1      120    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0     1285    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1      107    5279
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       21      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       20      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       18      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       14      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        1      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0      36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       86     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       75     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1       12     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       72     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1       18     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       75     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1       14     358
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                 0       84     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                 1       14     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                 0       86     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                 1       17     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                 0       85     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                 1       16     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                 0       83     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                 1       17     402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      163     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        4     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      152     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        2     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      149     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        6     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        2     635
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      496    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       11    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      602    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       21    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      408    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      495    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       13    2053
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      120     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       12     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      127     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       14     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      116     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       19     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      114     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       20     542
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                 0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                 0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                 0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                 0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                 1        0     215
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      210     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       13     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      174     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       16     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      144     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1        9     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      273     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       14     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0       14      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0        8      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0       17      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0        5      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1        0      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       20      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        1      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       19      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        1      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2      82
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        3      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       15      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        2      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       17      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        0      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0      60
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       93     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       83     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       89     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       85     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        6     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 0       90     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 1       10     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 0       95     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 1       10     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 0       87     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 1       15     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 0       90     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 1       13     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      165     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        2     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      151     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        5     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      150     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        5     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        3     638
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14    2157
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      130     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       18     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      125     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       26     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      127     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       21     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      125     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       20     592
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 0       59     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 1        0     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 0      375    1023
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 1        9    1023
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 0      199    1023
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 1        4    1023
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 0      197    1023
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 1       11    1023
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 0      217    1023
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 1       11    1023
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      754    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       19    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      556    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       48    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      476    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1       27    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      881    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       50    2811
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 0      188     715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 1        1     715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 0      172     715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 1        3     715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 0      176     715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 1        2     715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 0      173     715
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 1        0     715
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0     4219   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1      198   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0     3169   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1      253   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0     3653   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1      236   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0     3734   15672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1      210   15672
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0     1178    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1       63    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0     1198    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1      136    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0     1192    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1      120    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0     1285    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1      107    5279


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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
![](/tmp/cf5a0db7-eae8-42e1-8085-60107b6e364f/19968d26-b6db-44df-b23d-d29c70e6dc1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cf5a0db7-eae8-42e1-8085-60107b6e364f/19968d26-b6db-44df-b23d-d29c70e6dc1e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cf5a0db7-eae8-42e1-8085-60107b6e364f/19968d26-b6db-44df-b23d-d29c70e6dc1e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cf5a0db7-eae8-42e1-8085-60107b6e364f/19968d26-b6db-44df-b23d-d29c70e6dc1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0970244   0.0375529   0.1564959
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0935485   0.0374876   0.1496094
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1432532   0.0735123   0.2129940
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1172193   0.0529014   0.1815373
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1221666   0.0691694   0.1751638
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1727912   0.1121873   0.2333951
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1437091   0.0869788   0.2004394
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1385310   0.0821460   0.1949159
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0248658   0.0138188   0.0359128
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0840914   0.0619924   0.1061905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0514562   0.0321774   0.0707349
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0531333   0.0386458   0.0676208
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0469271   0.0391301   0.0547241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0667837   0.0576849   0.0758824
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0575635   0.0492211   0.0659058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0579558   0.0502742   0.0656374
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0524410   0.0341572   0.0707247
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0969893   0.0785819   0.1153967
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0913283   0.0749698   0.1076867
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0782995   0.0636140   0.0929849
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0652174   0.0146933   0.1157415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1379310   0.0653709   0.2104911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2000000   0.1172450   0.2827550
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1573034   0.0815564   0.2330503
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1434334   0.0742651   0.2126017
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1666662   0.0940390   0.2392934
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1746113   0.1025007   0.2467218
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1768264   0.1042910   0.2493618
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0216963   0.0090116   0.0343809
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0337079   0.0195326   0.0478831
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0168675   0.0044749   0.0292600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0255906   0.0118554   0.0393257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0950295   0.0436409   0.1464180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1011060   0.0499440   0.1522681
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1353322   0.0749520   0.1957124
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1462198   0.0860913   0.2063483
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0582960   0.0275260   0.0890659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0842105   0.0447005   0.1237205
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0588235   0.0215184   0.0961286
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0487805   0.0238446   0.0737164
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1032185   0.0431536   0.1632835
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0972047   0.0406961   0.1537133
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1470787   0.0783005   0.2158570
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1295854   0.0649068   0.1942640
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1218648   0.0681930   0.1755366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1703652   0.1095065   0.2312239
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1362202   0.0792709   0.1931694
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1375880   0.0802969   0.1948791
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0248609   0.0138193   0.0359024
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0842241   0.0621614   0.1062868
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0527264   0.0331590   0.0722938
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0533768   0.0388906   0.0678630
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0476175   0.0397864   0.0554487
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0663010   0.0571833   0.0754187
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0576787   0.0492580   0.0660994
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0561720   0.0484808   0.0638631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0530706   0.0350810   0.0710602
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0968389   0.0786273   0.1150506
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0910245   0.0747662   0.1072828
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0786554   0.0640619   0.0932489


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572358   0.0531429   0.0613287
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0806971   0.0720842   0.0893100
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572358   0.0531429   0.0613287
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0806971   0.0720842   0.0893100


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9641741   0.4095917   2.269655
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4764649   0.6745919   3.231507
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2081424   0.5297483   2.755286
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4143898   0.8093833   2.471633
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1763369   0.6541874   2.115248
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1339510   0.6253701   2.056134
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.3818062   2.0183107   5.666429
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.0693525   1.1573269   3.700095
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1368000   1.2687938   3.598626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4231369   1.1628221   1.741727
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2266576   0.9897934   1.520205
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2350174   0.9977052   1.528776
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8494953   1.2477968   2.741338
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7415446   1.1734208   2.584731
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4930973   1.0066037   2.214714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1149425   0.8291086   5.394929
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.0666667   1.2741917   7.380714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4119850   0.9687855   6.005119
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1619760   0.6087428   2.217995
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2173683   0.6460737   2.293834
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2328119   0.6549967   2.320356
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5536261   0.7560946   3.192397
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774371   0.3040121   1.988106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1794918   0.5333532   2.608404
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0639441   0.5065703   2.234590
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.4241076   0.7065889   2.870243
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.5386784   0.7804646   3.033489
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4445344   0.7128959   2.927047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0090498   0.4421567   2.302761
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8367730   0.4013236   1.744699
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9417367   0.4138638   2.142898
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4249254   0.6751679   3.007271
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2554467   0.5828626   2.704147
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3979855   0.7928262   2.465059
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1177976   0.6085763   2.053106
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1290218   0.6156135   2.070602
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.3878181   2.0229852   5.673453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1208599   1.1890620   3.782853
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1470205   1.2758792   3.612957
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3923661   1.1397913   1.700911
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2112914   0.9773226   1.501272
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1796493   0.9509241   1.463390
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8247204   1.2429764   2.678735
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7151598   1.1651638   2.524772
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4820914   1.0080673   2.179016


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0200487   -0.0329141   0.0730115
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0214145   -0.0256484   0.0684774
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0263615    0.0153121   0.0374109
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0103088    0.0037380   0.0168795
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0282561    0.0122830   0.0442293
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0744474    0.0241121   0.1247827
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0157706   -0.0453037   0.0768449
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0036325   -0.0076655   0.0149306
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0248967   -0.0216330   0.0714265
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0026653   -0.0239777   0.0293084
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0138546   -0.0395949   0.0673042
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0217163   -0.0259127   0.0693453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0263665    0.0153216   0.0374114
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0096183    0.0030368   0.0161998
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0276265    0.0119166   0.0433365


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1712496   -0.4287791   0.5192908
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1491455   -0.2493216   0.4205227
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5145981    0.2663895   0.6788282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1801102    0.0558166   0.2880416
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3501507    0.1130977   0.5238436
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5330435    0.0379996   0.7733386
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0990589   -0.3783886   0.4111277
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1434153   -0.4391886   0.4901729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2076005   -0.2893853   0.5130260
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0437220   -0.5101151   0.3944385
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1183416   -0.4780902   0.4741041
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1512476   -0.2535543   0.4253296
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5146952    0.2666337   0.6788498
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1680472    0.0436924   0.2762314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3423486    0.1107339   0.5136379

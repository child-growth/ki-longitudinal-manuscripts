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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       57     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        4     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       57     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        3     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       56     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        5     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       59     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        1     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                 0       52     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                 1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                 0       52     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                 1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                 0       53     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                 1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                 0       51     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                 1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       55     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        4     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       55     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        5     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       52     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       53     235
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        5     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       58     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       58     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       59     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       58     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        1     236
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       68     271
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0       68     271
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0       71     271
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0       63     271
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        1     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       64     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       64     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       63     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        1     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       63     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        1     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       63     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       63     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       62     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       62     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     250
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      142     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        4     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      162     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        4     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      167     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        3     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      155     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        4     641
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14    2157
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      132     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       17     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      123     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       25     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      137     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       20     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      125     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       18     597
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0     4505   15796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1      205   15796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0     3107   15796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1      254   15796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0     3440   15796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1      221   15796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0     3847   15796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1      217   15796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0     1234    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1       73    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0     1191    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1      133    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0     1199    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1      116    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0     1229    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1      104    5279
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       58     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        3     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       59     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       59     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       59     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                 0       53     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                 0       52     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                 1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                 0       53     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                 0       51     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                 1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       54     234
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        4     234
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       55     234
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        5     234
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       51     234
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        7     234
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       56     234
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        2     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       57     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       57     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       59     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       57     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        2     236
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       68     271
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 0       68     271
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 0       71     271
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 0       64     271
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       64     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       62     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       64     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       63     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        1     255
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     250
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      143     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        2     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      161     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        5     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      167     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        2     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      153     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        5     638
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      496    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       11    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      602    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       21    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      408    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      495    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       13    2053
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      125     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       13     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      125     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       15     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      134     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       18     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      121     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       16     567
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0       17      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0        7      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0       15      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0        9      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1        1      50
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       57     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        4     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       57     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        3     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       56     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        5     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       59     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        1     242
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                 0       52     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4                 1        1     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                 0       52     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1                 1        1     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                 0       53     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2                 1        0     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                 0       51     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3                 1        0     210
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       55     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       55     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       52     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        6     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       53     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       58     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        1     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       58     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        1     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       59     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       58     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        1     236
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       68     271
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0     271
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0       68     271
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0     271
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0       71     271
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0     271
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0       63     271
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        1     271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       64     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       64     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        0     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       63     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        1     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       63     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        1     256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       63     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       63     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       62     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       62     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0     250
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      142     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        4     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      162     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        4     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      167     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        3     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      155     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        4     641
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521    2157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14    2157
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      132     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       17     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      123     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       25     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      137     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       20     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      125     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       18     597
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0     4505   15796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1      205   15796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0     3107   15796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1      254   15796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0     3440   15796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1      221   15796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0     3847   15796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1      217   15796
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0     1234    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1       73    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0     1191    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1      133    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0     1199    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1      116    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0     1229    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1      104    5279


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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/e168ebef-1978-4fae-a3e7-9c8217261603/a5af938f-9e71-4f98-9a0e-0b5d9bbc3083/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e168ebef-1978-4fae-a3e7-9c8217261603/a5af938f-9e71-4f98-9a0e-0b5d9bbc3083/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e168ebef-1978-4fae-a3e7-9c8217261603/a5af938f-9e71-4f98-9a0e-0b5d9bbc3083/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e168ebef-1978-4fae-a3e7-9c8217261603/a5af938f-9e71-4f98-9a0e-0b5d9bbc3083/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0977537   0.0384235   0.1570839
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0953435   0.0389565   0.1517305
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1341006   0.0640243   0.2041768
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1256832   0.0619201   0.1894463
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1140348   0.0625585   0.1655112
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1641019   0.1034492   0.2247545
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1242720   0.0716670   0.1768769
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1270333   0.0718557   0.1822109
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0247723   0.0137668   0.0357778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0834542   0.0614404   0.1054681
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0519125   0.0325381   0.0712869
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0533787   0.0388866   0.0678709
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0465555   0.0389459   0.0541652
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0691488   0.0594878   0.0788098
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0590857   0.0499293   0.0682422
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0571297   0.0493401   0.0649192
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0586726   0.0428892   0.0744560
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0956542   0.0769876   0.1143209
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0874242   0.0721706   0.1026779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0789091   0.0619742   0.0958440
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0652174   0.0146933   0.1157415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1379310   0.0653709   0.2104911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2000000   0.1172450   0.2827550
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1573034   0.0815564   0.2330503
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1433540   0.0743831   0.2123249
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1639032   0.0913408   0.2364656
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1663299   0.0962208   0.2364391
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1746681   0.1004073   0.2489288
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0216963   0.0090116   0.0343809
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0337079   0.0195326   0.0478831
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0168675   0.0044749   0.0292600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0255906   0.0118554   0.0393257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0964624   0.0452624   0.1476623
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1098976   0.0579064   0.1618888
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1160319   0.0639554   0.1681084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1168600   0.0628241   0.1708958
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0582960   0.0275260   0.0890659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0842105   0.0447005   0.1237205
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0588235   0.0215184   0.0961286
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0487805   0.0238446   0.0737164
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0940622   0.0340902   0.1540341
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0961752   0.0402946   0.1520558
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1447654   0.0749757   0.2145552
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1166469   0.0518466   0.1814471
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1129009   0.0616076   0.1641943
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1641789   0.1036240   0.2247338
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1219934   0.0693825   0.1746043
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1261212   0.0707448   0.1814976
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0247397   0.0137370   0.0357424
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0836046   0.0615893   0.1056199
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0519434   0.0325775   0.0713094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0533565   0.0388603   0.0678527
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0467264   0.0392480   0.0542048
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0688936   0.0591495   0.0786377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0589412   0.0499273   0.0679550
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0566952   0.0488803   0.0645100
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0590941   0.0434212   0.0747669
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0953982   0.0769030   0.1138935
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0866678   0.0714931   0.1018425
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0789621   0.0618682   0.0960559


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567865   0.0526703   0.0609027
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0806971   0.0720842   0.0893100
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567865   0.0526703   0.0609027
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0806971   0.0720842   0.0893100


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9753443   0.4187635   2.271679
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3718218   0.6151782   3.059106
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2857131   0.5823986   2.838362
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4390502   0.8032595   2.578078
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0897719   0.5870145   2.023123
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1139866   0.5953586   2.084401
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.3688492   2.0096751   5.647254
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.0955848   1.1730826   3.743535
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1547736   1.2801723   3.626894
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4852978   1.2103294   1.822735
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2691458   1.0183828   1.581656
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2271303   0.9897978   1.521370
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.6303048   1.1708007   2.270150
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4900350   1.0752519   2.064822
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3449057   0.9532294   1.897519
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1149425   0.8291086   5.394929
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.0666667   1.2741917   7.380714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4119850   0.9687855   6.005119
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1433457   0.5961017   2.192981
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1602740   0.6117751   2.200540
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2184385   0.6420514   2.312264
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5536261   0.7560946   3.192397
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774371   0.3040121   1.988106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1794918   0.5333532   2.608404
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1392795   0.5593522   2.320466
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2028720   0.6001977   2.410707
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2114567   0.5993138   2.448846
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4445344   0.7128959   2.927047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0090498   0.4421567   2.302761
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8367730   0.4013236   1.744699
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0224641   0.4322505   2.418581
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.5390399   0.6911063   3.427322
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2401038   0.5325106   2.887937
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4541855   0.8106084   2.608727
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0805349   0.5776260   2.021300
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1170961   0.5938340   2.101435
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.3793714   2.0155725   5.665959
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.0995991   1.1750830   3.751494
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1567154   1.2806633   3.632041
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4744038   1.2031032   1.806883
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2614096   1.0180154   1.562996
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2133426   0.9795568   1.502925
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.6143449   1.1644181   2.238122
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4666075   1.0605861   2.028065
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3362096   0.9488423   1.881721


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0193195   -0.0334673   0.0721063
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0199685   -0.0256824   0.0656194
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0264550    0.0154353   0.0374747
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0102310    0.0037839   0.0166782
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0220245    0.0076909   0.0363581
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0744474    0.0241121   0.1247827
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0158500   -0.0451444   0.0768444
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0036325   -0.0076655   0.0149306
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0128851   -0.0326344   0.0584046
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0026653   -0.0239777   0.0293084
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0230110   -0.0303586   0.0763806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0211024   -0.0243881   0.0665929
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0264876    0.0154695   0.0375058
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0100601    0.0037724   0.0163478
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0216030    0.0073767   0.0358293


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1650208   -0.4310621   0.5128163
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1490150   -0.2686458   0.4291744
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5164237    0.2691404   0.6800397
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1801662    0.0577050   0.2867123
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2729281    0.0732810   0.4295644
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5330435    0.0379996   0.7733386
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0995576   -0.3770445   0.4112053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1434153   -0.4391886   0.4901729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1178362   -0.4134863   0.4494372
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0437220   -0.5101151   0.3944385
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1965522   -0.4161215   0.5441575
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1574767   -0.2592515   0.4362957
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5170607    0.2697728   0.6806057
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1771565    0.0579419   0.2812849
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2677052    0.0700288   0.4233632

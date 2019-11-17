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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8797cc2b-13d0-4bb3-b5a9-678a937a7429/473c9076-9cd9-422d-bc4e-b044011aad99/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8797cc2b-13d0-4bb3-b5a9-678a937a7429/473c9076-9cd9-422d-bc4e-b044011aad99/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8797cc2b-13d0-4bb3-b5a9-678a937a7429/473c9076-9cd9-422d-bc4e-b044011aad99/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8797cc2b-13d0-4bb3-b5a9-678a937a7429/473c9076-9cd9-422d-bc4e-b044011aad99/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1000000   0.0411292   0.1588708
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0952381   0.0390226   0.1514536
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1470588   0.0782438   0.2158739
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1140940   0.0630030   0.1651849
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1689189   0.1085043   0.2293335
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1273885   0.0751925   0.1795846
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1258741   0.0714615   0.1802867
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0245796   0.0136622   0.0354969
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0794702   0.0578963   0.1010441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0536779   0.0339783   0.0733776
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0537057   0.0392222   0.0681892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0435244   0.0361858   0.0508630
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0755727   0.0659866   0.0851589
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0603660   0.0515940   0.0691380
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0533957   0.0459916   0.0607997
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0558531   0.0401678   0.0715384
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1004532   0.0815845   0.1193219
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0882129   0.0729840   0.1034418
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0780195   0.0608577   0.0951813
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0652174   0.0146933   0.1157415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1379310   0.0653709   0.2104911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2000000   0.1172450   0.2827550
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1573034   0.0815564   0.2330503
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1428571   0.0734901   0.2122242
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1650485   0.0932680   0.2368291
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1584158   0.0871180   0.2297137
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1700000   0.0962856   0.2437144
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0216963   0.0090116   0.0343809
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0337079   0.0195326   0.0478831
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0168675   0.0044749   0.0292600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0255906   0.0118554   0.0393257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0942029   0.0454232   0.1429826
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1071429   0.0558638   0.1584219
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1184211   0.0670102   0.1698319
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1167883   0.0629609   0.1706157
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0582960   0.0275260   0.0890659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0842105   0.0447005   0.1237205
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0588235   0.0215184   0.0961286
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0487805   0.0238446   0.0737164
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1000000   0.0411292   0.1588708
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0952381   0.0390226   0.1514536
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1470588   0.0782438   0.2158739
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1140940   0.0630030   0.1651849
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1689189   0.1085043   0.2293335
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1273885   0.0751925   0.1795846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1258741   0.0714615   0.1802867
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0245796   0.0136622   0.0354969
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0794702   0.0578963   0.1010441
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0536779   0.0339783   0.0733776
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0537057   0.0392222   0.0681892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0435244   0.0361858   0.0508630
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0755727   0.0659866   0.0851589
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0603660   0.0515940   0.0691380
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0533957   0.0459916   0.0607997
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0558531   0.0401678   0.0715384
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1004532   0.0815845   0.1193219
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0882129   0.0729840   0.1034418
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0780195   0.0608577   0.0951813


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
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9523810   0.4137684   2.192119
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4705882   0.6932491   3.119556
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2621359   0.5796824   2.748034
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4805246   0.8346860   2.626081
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1165230   0.6085067   2.048661
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1032497   0.5920621   2.055798
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.2331823   1.9211236   5.441330
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1838443   1.2274252   3.885513
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1849737   1.2994972   3.673813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.7363298   1.4169082   2.127761
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3869461   1.1118465   1.730112
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2267980   0.9818678   1.532827
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7985246   1.2853383   2.516606
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5793739   1.1286933   2.210009
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3968698   0.9771951   1.996781
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1149425   0.8291086   5.394929
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.0666667   1.2741917   7.380714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4119850   0.9687855   6.005119
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1553398   0.6020198   2.217220
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1089109   0.5719560   2.149961
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1900000   0.6206144   2.281771
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5536261   0.7560946   3.192397
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774371   0.3040121   1.988106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1794918   0.5333532   2.608404
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1373626   0.5619127   2.302125
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2570850   0.6395877   2.470752
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2397529   0.6198290   2.479695
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4445344   0.7128959   2.927047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0090498   0.4421567   2.302761
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8367730   0.4013236   1.744699
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9523810   0.4137684   2.192119
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4705882   0.6932491   3.119556
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2621359   0.5796824   2.748034
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.392518
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.802128
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.503976
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4805246   0.8346860   2.626081
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1165230   0.6085067   2.048661
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1032497   0.5920621   2.055798
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.2331823   1.9211236   5.441330
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1838443   1.2274252   3.885513
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1849737   1.2994972   3.673813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.7363298   1.4169082   2.127761
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3869461   1.1118465   1.730112
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2267980   0.9818678   1.532827
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7985246   1.2853383   2.516606
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5793739   1.1286933   2.210009
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3968698   0.9771951   1.996781


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0170732   -0.0353292   0.0694755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0199094   -0.0254260   0.0652448
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0266478    0.0156896   0.0376059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0132621    0.0071281   0.0193961
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0248440    0.0106411   0.0390469
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0744474    0.0241121   0.1247827
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0163468   -0.0448746   0.0775683
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0036325   -0.0076655   0.0149306
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0151445   -0.0282398   0.0585289
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0026653   -0.0239777   0.0293084
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0170732   -0.0353292   0.0694755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0045011   -0.0067043   0.0157066
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0199094   -0.0254260   0.0652448
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0266478    0.0156896   0.0376059
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0132621    0.0071281   0.0193961
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0248440    0.0106411   0.0390469


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1458333   -0.4403244   0.4934470
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1485738   -0.2653281   0.4270842
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5201865    0.2748607   0.6825148
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2335433    0.1162958   0.3352346
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3078674    0.1086847   0.4625386
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5330435    0.0379996   0.7733386
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1026786   -0.3767125   0.4151388
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1434153   -0.4391886   0.4901729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1384993   -0.3637484   0.4557768
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0437220   -0.5101151   0.3944385
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1458333   -0.4403244   0.4934470
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1673958   -0.3700147   0.4939983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1485738   -0.2653281   0.4270842
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5201865    0.2748607   0.6825148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2335433    0.1162958   0.3352346
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3078674    0.1086847   0.4625386

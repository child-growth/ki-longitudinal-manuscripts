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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        hhwealth_quart    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       19      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        2      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       12      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        5      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       14      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        4      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       19      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        1      76
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              0        8      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        3      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        6      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       12      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        3      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              0        9      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        2      54
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0        9      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        0      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0        7      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        1      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0        5      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        1      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0        5      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        2      30
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4              0       10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4              1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              1        1      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              1        0      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       13      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        2      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       13      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        3      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       12      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        2      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        1      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0        6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0        4      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        1      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       26      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       16      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       21      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        4      88
Birth       ki1000108-IRC              INDIA                          Wealth Q4              0       63     343
Birth       ki1000108-IRC              INDIA                          Wealth Q4              1       16     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1              0       58     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1              1       32     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2              0       60     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2              1       23     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3              0       70     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3              1       21     343
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      190     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1       68     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0       98     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1       46     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      108     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1       33     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      148     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       38     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      671    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1      144    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      533    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1      114    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      442    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       64    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      801    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1      129    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     3241   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      294   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     3550   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      418   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     3802   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      450   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     3592   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      344   15691
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0      145     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1        8     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0      158     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1       13     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0      178     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1        7     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0      166     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1        8     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        2      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       18      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        1      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        1      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4              0       16      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        2      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       13      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        4      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3              0       16      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        1      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4              0       10      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4              1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              1        0      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        0      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       87     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        8     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       74     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1       16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       80     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1       13     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       81     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        9     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4              0       84     408
6 months    ki1000108-IRC              INDIA                          Wealth Q4              1       16     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1              0       96     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1              1        8     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2              0       91     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2              1       11     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3              0       83     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3              1       19     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              0      149     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              1        6     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              0      131     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              1        6     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              0      135     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              1        5     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              0      141     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              1        7     580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0      485    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       16    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0      573    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1       32    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0      395    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       14    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0      479    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1       25    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      132     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1        9     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      132     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       13     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      127     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       12     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0      121     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       17     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1              0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3              1        0     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      332     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1        7     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0      170     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1        6     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      189     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1        5     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      205     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       12     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      715    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1       29    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      520    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1       49    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      453    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       32    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      857    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1       51    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4              0      216     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4              1        1     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1              0      195     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1              1        8     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2              0      197     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2              1        2     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3              0      194     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3              1        3     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     4399   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      332   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     3337   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      363   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     3778   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      375   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     3843   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      349   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0     1090    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1       50    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0     1112    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1       93    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0     1129    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1       83    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0     1221    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1       49    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       20      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        1      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       19      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        2      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       14      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        3      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       16      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        2      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4              0       13      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        5      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        3      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       15      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        2      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3              0       14      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        3      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        0      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4              0        9      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4              1        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              0        8      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              1        0      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       15      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        1      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        0      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        1      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        1      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       93     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       84     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       88     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       84     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        7     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4              0       93     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4              1        7     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1              0       96     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1              1        9     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2              0       92     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2              1        9     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3              0       97     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3              1        6     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              0      140     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              1       16     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              0      107     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              1       23     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              0      126     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              1       16     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              0      139     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              1       10     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      103     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1       24     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      103     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       23     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      103     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       23     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0       98     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       21     498
24 months   ki1114097-CONTENT          PERU                           Wealth Q4              0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1              0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2              0       42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3              0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3              1        0     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      392    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1       13    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0      195    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1        8    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      204    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1       11    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      208    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       15    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      654    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1       31    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      447    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1       45    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      396    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       28    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      785    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1       63    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4              0      154     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4              1        1     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1              0      123     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1              1        4     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2              0      138     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2              1        2     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3              0      133     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3              1        3     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     1782    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      433    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     1550    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      469    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     1709    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      491    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     1679    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      481    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0      941    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1      196    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0      929    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1      237    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0      915    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1      247    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0     1025    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1      240    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b75aa7a4-f642-437d-b069-635e068e58a3/1c14d326-9953-4eee-b16c-1d9deebf46bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b75aa7a4-f642-437d-b069-635e068e58a3/1c14d326-9953-4eee-b16c-1d9deebf46bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b75aa7a4-f642-437d-b069-635e068e58a3/1c14d326-9953-4eee-b16c-1d9deebf46bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b75aa7a4-f642-437d-b069-635e068e58a3/1c14d326-9953-4eee-b16c-1d9deebf46bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1947617   0.1114458   0.2780775
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3530539   0.2592351   0.4468726
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2834027   0.1903476   0.3764578
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2298481   0.1533990   0.3062971
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2578092   0.2058027   0.3098158
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3337571   0.2583686   0.4091456
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2275669   0.1608209   0.2943130
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2065620   0.1489345   0.2641894
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1561629   0.1422016   0.1701242
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1561410   0.1422230   0.1700591
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1551373   0.1410439   0.1692307
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1552258   0.1415564   0.1688952
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0973733   0.0918654   0.1028812
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0952441   0.0894671   0.1010210
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0964974   0.0909865   0.1020083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0956222   0.0901193   0.1011251
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0522876   0.0206412   0.0839340
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0760234   0.0274510   0.1245958
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0378378   0.0022240   0.0734516
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0459770   0.0128344   0.0791197
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0842105   0.0282917   0.1401294
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1777778   0.0986824   0.2568731
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1397849   0.0692131   0.2103567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1000000   0.0379361   0.1620639
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1600000   0.0880583   0.2319417
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0769231   0.0256474   0.1281988
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1078431   0.0475736   0.1681127
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1862745   0.1106267   0.2619224
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0387097   0.0083152   0.0691041
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0437956   0.0094988   0.0780924
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0357143   0.0049475   0.0664811
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0472973   0.0130687   0.0815259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0322373   0.0166336   0.0478411
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0525237   0.0347421   0.0703054
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0334338   0.0162265   0.0506411
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0499608   0.0309087   0.0690129
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0638298   0.0234454   0.1042142
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0896552   0.0431136   0.1361967
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0863309   0.0396000   0.1330619
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1231884   0.0683061   0.1780707
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0206490   0.0055029   0.0357951
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0340909   0.0072675   0.0609143
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0257732   0.0034634   0.0480830
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0552995   0.0248724   0.0857266
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0400260   0.0260012   0.0540508
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0883942   0.0653075   0.1114810
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0655594   0.0435205   0.0875982
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0550128   0.0400870   0.0699386
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0747643   0.0651180   0.0844107
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0949585   0.0843893   0.1055276
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0870471   0.0775660   0.0965282
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0852943   0.0759667   0.0946218
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0444581   0.0254100   0.0635062
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0769363   0.0583992   0.0954735
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0682251   0.0482630   0.0881871
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0391732   0.0270709   0.0512755
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0700000   0.0199309   0.1200691
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0857143   0.0321034   0.1393251
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129642   0.1035407
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0908787   0.0423155   0.1394420
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1644852   0.0987512   0.2302191
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1089057   0.0563116   0.1614999
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0609509   0.0203211   0.1015807
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1921809   0.1238325   0.2605294
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1889993   0.1211689   0.2568297
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1868710   0.1187328   0.2550092
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1816660   0.1127832   0.2505488
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0320988   0.0149241   0.0492734
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0394089   0.0126311   0.0661866
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0511628   0.0216976   0.0806280
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0672646   0.0343737   0.1001555
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0465096   0.0309905   0.0620287
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0910379   0.0652899   0.1167859
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0652153   0.0415821   0.0888486
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0732395   0.0556770   0.0908021
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2104600   0.1905082   0.2304118
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2230000   0.2040174   0.2419827
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2172544   0.1980615   0.2364473
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2252999   0.2051217   0.2454780
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1752207   0.1452842   0.2051571
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2013550   0.1738979   0.2288121
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2110446   0.1856461   0.2364431
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1898789   0.1657336   0.2140242


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2537723   0.2221611   0.2853834
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1556246   0.1424244   0.1688248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0959786   0.0907764   0.1011808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0413793   0.0251566   0.0576020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0323974   0.0209875   0.0438073
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845851   0.0797798   0.0893904
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0569712   0.0481278   0.0658146
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449331   0.0323731   0.0574931
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2180591   0.2081778   0.2279404
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1945032   0.1812962   0.2077102


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.8127482   1.1092268   2.962474
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4551258   0.8591783   2.464437
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1801504   0.6990598   1.992326
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2945892   0.9592584   1.747143
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8826950   0.6212039   1.254259
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8012202   0.5702342   1.125772
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9998600   0.9557663   1.045988
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9934323   0.9462550   1.042962
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9939993   0.9507415   1.039225
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.9781332   0.9453760   1.012025
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9910044   0.9584508   1.024664
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9820166   0.9489803   1.016203
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4539474   0.6034264   3.503266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.7236486   0.2358403   2.220432
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8793103   0.3464580   2.231690
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1111111   0.9492417   4.695106
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.6599462   0.7208115   3.822666
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1875000   0.4785137   2.946950
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.4807692   0.2151491   1.074321
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.6740196   0.3289721   1.380976
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1642157   0.6351858   2.133861
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1313869   0.3732482   3.429451
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9226190   0.2876093   2.959661
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2218468   0.4200166   3.554407
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.6292826   0.9025074   2.941319
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0371135   0.5116423   2.102259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.5497814   0.8367402   2.870452
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4045977   0.6196201   3.184039
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3525180   0.5882055   3.109976
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.9299517   0.8901962   4.184149
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.840693
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.881706
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.699528
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.2084201   1.4270824   3.417546
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6379190   1.0081434   2.661108
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3744262   0.8826792   2.140129
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2701041   1.0684918   1.509758
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1642863   0.9845514   1.376833
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1408416   0.9648285   1.348965
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7305356   1.0600553   2.825092
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5345923   0.9182589   2.564607
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8811252   0.5212284   1.489523
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2244898   0.4734817   3.166702
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2729844   0.4926099   3.289599
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8321775   0.2893443   2.393410
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.8099415   0.9298231   3.523131
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.1983636   0.5819167   2.467837
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6706842   0.2853403   1.576424
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9834446   0.5931459   1.630566
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9723703   0.5840200   1.618958
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9452864   0.5616713   1.590906
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.915481
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.498375
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.326032
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9574009   1.2639273   3.031360
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4021912   0.8567614   2.294852
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5747192   1.0444513   2.374204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0595840   0.9377129   1.197294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0322835   0.9055065   1.176810
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0705116   0.9413614   1.217381
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1491508   0.9209161   1.433950
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2044505   0.9728353   1.491209
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0836558   0.8720669   1.346582


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0734599   -0.0001772   0.1470970
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0040370   -0.0451080   0.0370341
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0005383   -0.0047858   0.0037091
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0013947   -0.0034724   0.0006830
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0004211   -0.0297010   0.0305431
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0407895   -0.0107598   0.0923387
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0276471   -0.0886587   0.0333646
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0026696   -0.0236597   0.0289989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0108533   -0.0033950   0.0251017
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0267564   -0.0103529   0.0638656
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0194714    0.0064805   0.0324623
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0098208    0.0013818   0.0182598
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0125131   -0.0038166   0.0288428
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0057946   -0.0382574   0.0498467
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0217729   -0.0204504   0.0639963
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0094500   -0.0682848   0.0493848
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0216815    0.0073626   0.0360004
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0075991   -0.0097631   0.0249614
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0192825   -0.0070099   0.0455749


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2738777   -0.0589416   0.5020938
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0159078   -0.1913516   0.1336994
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0034592   -0.0311212   0.0234607
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0145318   -0.0364653   0.0069375
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0079884   -0.7636551   0.4420184
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3263158   -0.2283944   0.6305336
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2088889   -0.7673694   0.1731144
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0645161   -0.8459385   0.5259159
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2518715   -0.1580840   0.5167050
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2953692   -0.2489631   0.6024666
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3626352   -0.2100558   0.6642850
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3272648    0.0768626   0.5097451
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1161055    0.0103578   0.2105535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2196390   -0.1326783   0.4623687
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0764516   -0.7319580   0.5075275
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1932767   -0.2850373   0.4935536
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0517155   -0.4284281   0.2256485
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2856317   -0.1247612   0.5462841
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3179524    0.0792529   0.4947701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0348489   -0.0481613   0.1112850
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0991372   -0.0472460   0.2250590

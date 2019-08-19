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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        hhwealth_quart    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       21      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        0      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       18      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        3      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       19      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        1      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       20      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        0      82
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       11      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        1      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       17      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        0      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       15      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        0      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                0        9      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        2      55
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0        9      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0        8      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        0      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0        6      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        1      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0        7      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      31
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                0       10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       31      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       14      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       19      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       23      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1        2      90
Birth       ki1000108-IRC              INDIA                          Wealth Q4                0       87     388
Birth       ki1000108-IRC              INDIA                          Wealth Q4                1        4     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1                0       96     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1                1        2     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2                0       92     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2                1        7     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3                0       97     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3                1        3     388
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      291     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1        2     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      157     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1        0     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      158     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1        3     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      201     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1        4     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      835    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1        7    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      675    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       12    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      524    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       14    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      969    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       13    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     3857   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      294   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     4542   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      660   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     4767   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      579   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     4387   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      508   19594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0      167     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       16     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0      187     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1       22     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0      207     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       12     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0      197     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       14     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       16      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        3      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       17      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        3      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        0      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       17      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        0      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       13      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        4      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                1        2      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                1        1      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                0        7      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                1        1      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       14      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        1      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        2      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       79     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       89     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       83     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       76     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       14     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4                0       92     407
6 months    ki1000108-IRC              INDIA                          Wealth Q4                1        7     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1                0       95     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1                1       10     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2                0       92     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2                1        8     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3                0       99     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3                1        4     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      153     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        2     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      130     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1        8     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      137     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        3     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      147     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        1     581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0      497    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0      598    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        7    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0      403    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        6    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0      503    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      139     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      134     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       11     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      135     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      135     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        3     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                0       51     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                1        1     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                0       51     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                1        1     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                0       50     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                1        2     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      313     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1       26     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      147     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1       28     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      165     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1       30     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      181     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1       35     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      719    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1       24    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      540    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       30    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      459    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       26    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      858    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       52    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      201     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       16     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      182     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       21     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      184     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       15     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      184     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                1       13     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     4544   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      198   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     3412   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      293   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     3879   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      278   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     3949   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      250   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1100    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       40    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     1101    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      102    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1136    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       75    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1218    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       53    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       20      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        1      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       16      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        5      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       13      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        4      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       13      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        5      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        2      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        3      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        1      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       14      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        3      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0        8      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        2      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                1        3      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                0        6      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                1        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                1        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       12      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        4      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       15      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        1      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       14      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        3      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        1      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       10      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        8      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        6      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       62     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       68     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1       23     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       59     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       60     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       31     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4                0       95     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4                1        5     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1                0       90     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1                1       15     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2                0       91     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2                1       10     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3                0       92     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3                1       11     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      148     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        8     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      104     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1       25     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      133     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        9     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      142     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        7     576
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      118     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        9     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      105     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       22     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      111     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1       15     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      111     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        8     499
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                1        2     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                1        1     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      265    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1      138    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      100    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1      103    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      110    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1      103    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      120    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1       99    1038
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      571    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1      117    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      311    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1      178    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      286    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1      137    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      588    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1      257    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      143     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       17     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      112     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       17     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      123     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       23     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      130     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                1        9     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     2018    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      213    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     1616    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      404    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     1824    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      382    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     1821    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      345    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1075    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       66    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     1007    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      163    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1050    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1      116    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1179    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       91    4747


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/26300e3f-43e3-47a8-a38b-807e8109ab2e/7bed68c6-1373-435a-ba75-b8f05646f53f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26300e3f-43e3-47a8-a38b-807e8109ab2e/7bed68c6-1373-435a-ba75-b8f05646f53f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/26300e3f-43e3-47a8-a38b-807e8109ab2e/7bed68c6-1373-435a-ba75-b8f05646f53f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26300e3f-43e3-47a8-a38b-807e8109ab2e/7bed68c6-1373-435a-ba75-b8f05646f53f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.0083135   0.0021795   0.0144475
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.0174672   0.0076695   0.0272650
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.0260223   0.0125676   0.0394771
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.0132383   0.0060886   0.0203880
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.1036879   0.0989877   0.1083882
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.1044121   0.0997308   0.1090934
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.1042417   0.0995677   0.1089158
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.1042608   0.0995434   0.1089782
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0869978   0.0602029   0.1137927
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.0832089   0.0595583   0.1068596
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0744930   0.0445775   0.1044085
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0679605   0.0466525   0.0892685
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                0.0771914   0.0489124   0.1054704
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q1            NA                0.1640761   0.1115550   0.2165972
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q2            NA                0.1480800   0.0973185   0.1988414
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q3            NA                0.1634649   0.1138844   0.2130453
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.0342319   0.0210133   0.0474505
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.0551632   0.0359320   0.0743943
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.0545490   0.0338672   0.0752308
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.0542331   0.0395017   0.0689645
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                0.0768005   0.0414148   0.1121861
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q1            NA                0.1002867   0.0588327   0.1417406
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q2            NA                0.0762233   0.0391574   0.1132891
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q3            NA                0.0638170   0.0298823   0.0977517
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.0540535   0.0468164   0.0612905
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.0700061   0.0620023   0.0780100
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.0613366   0.0538953   0.0687780
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.0590431   0.0518304   0.0662559
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0413706   0.0274284   0.0553127
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.0744777   0.0614574   0.0874979
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0612245   0.0474280   0.0750211
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0423193   0.0308150   0.0538236
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                0.3457202   0.2489420   0.4424984
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q1            NA                0.2532690   0.1631981   0.3433400
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q2            NA                0.3827224   0.2825195   0.4829254
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q3            NA                0.3367329   0.2387065   0.4347593
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                0.0500000   0.0072313   0.0927687
24 months   ki1000108-IRC              INDIA         Wealth Q1            NA                0.1428571   0.0758436   0.2098707
24 months   ki1000108-IRC              INDIA         Wealth Q2            NA                0.0990099   0.0406898   0.1573300
24 months   ki1000108-IRC              INDIA         Wealth Q3            NA                0.1067961   0.0470769   0.1665153
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                0.0512821   0.0166391   0.0859250
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q1            NA                0.1937984   0.1255288   0.2620681
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q2            NA                0.0633803   0.0232715   0.1034891
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q3            NA                0.0469799   0.0129751   0.0809846
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                0.0708661   0.0261936   0.1155387
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q1            NA                0.1732283   0.1073437   0.2391130
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q2            NA                0.1190476   0.0624452   0.1756500
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q3            NA                0.0672269   0.0221899   0.1122639
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                0.3609162   0.3153754   0.4064570
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q1            NA                0.4867193   0.4183130   0.5551255
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q2            NA                0.4642621   0.3993014   0.5292228
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q3            NA                0.4590199   0.3943832   0.5236566
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.1912369   0.1632780   0.2191959
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.3637480   0.3208559   0.4066402
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.3103179   0.2671635   0.3534723
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.2887958   0.2585404   0.3190512
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                0.1062500   0.0584598   0.1540402
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q1            NA                0.1317829   0.0733611   0.1902048
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q2            NA                0.1575342   0.0983898   0.2166787
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q3            NA                0.0647482   0.0238035   0.1056929
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.1210907   0.1058862   0.1362952
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.1812589   0.1643263   0.1981915
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.1591517   0.1421051   0.1761984
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.1618516   0.1452392   0.1784640
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0627346   0.0457390   0.0797301
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.1322609   0.1115296   0.1529921
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0973346   0.0766358   0.1180335
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0722154   0.0571095   0.0873214


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150869   0.0107594   0.0194144
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1041645   0.0994900   0.1088391
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1286486   0.1070607   0.1502366
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0796569   0.0610679   0.0982459
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606439   0.0567894   0.0644985
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0559585   0.0491999   0.0627172
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4267823   0.3966784   0.4568861
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1149826   0.0888632   0.1411019
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1558622   0.1471181   0.1646064
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0918475   0.0824775   0.1012175


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         2.1010605   0.8316064   5.308347
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         3.1301115   1.2713841   7.706246
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.5923771   0.6381739   3.973313
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.0069841   0.9997908   1.014229
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.0053412   0.9982999   1.012432
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.0055249   0.9982589   1.012844
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         0.9564483   0.7881409   1.160698
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         0.8562631   0.6069879   1.207909
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         0.7811742   0.6081517   1.003423
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q1            Wealth Q4         2.1255760   1.3107607   3.446909
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q2            Wealth Q4         1.9183489   1.1616493   3.167964
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q3            Wealth Q4         2.1176574   1.3177364   3.403164
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         1.6114564   0.9579381   2.710814
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         1.5935150   0.9274873   2.737816
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.5842877   0.9882975   2.539688
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q1            Wealth Q4         1.3058087   0.7044311   2.420586
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q2            Wealth Q4         0.9924847   0.5085676   1.936863
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q3            Wealth Q4         0.8309456   0.4124333   1.674139
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.2951270   1.0953725   1.531309
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.1347394   0.9548607   1.348504
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.0923092   0.9129374   1.306924
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         1.8002574   1.2386636   2.616471
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.4799055   0.9922701   2.207182
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.0229315   0.6643655   1.575020
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q1            Wealth Q4         0.7325839   0.4658614   1.152014
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q2            Wealth Q4         1.1070295   0.7544584   1.624363
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q3            Wealth Q4         0.9740041   0.6502585   1.458934
24 months   ki1000108-IRC              INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA         Wealth Q1            Wealth Q4         2.8571428   1.0770898   7.579002
24 months   ki1000108-IRC              INDIA         Wealth Q2            Wealth Q4         1.9801980   0.7009124   5.594400
24 months   ki1000108-IRC              INDIA         Wealth Q3            Wealth Q4         2.1359223   0.7687111   5.934823
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q1            Wealth Q4         3.7790698   1.7640433   8.095815
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q2            Wealth Q4         1.2359155   0.4897626   3.118832
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q3            Wealth Q4         0.9161074   0.3403771   2.465656
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q1            Wealth Q4         2.4444444   1.1706862   5.104108
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q2            Wealth Q4         1.6798942   0.7627299   3.699926
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q3            Wealth Q4         0.9486461   0.3780992   2.380141
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q1            Wealth Q4         1.3485658   1.1189797   1.625257
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q2            Wealth Q4         1.2863431   1.0683400   1.548831
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q3            Wealth Q4         1.2718184   1.0551908   1.532919
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         1.9020805   1.5789673   2.291314
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         1.6226880   1.3295102   1.980516
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.5101466   1.2645768   1.803404
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q1            Wealth Q4         1.2403101   0.6595622   2.332409
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q2            Wealth Q4         1.4826753   0.8252733   2.663755
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q3            Wealth Q4         0.6093948   0.2804655   1.324092
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.4968855   1.2867273   1.741368
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.3143185   1.1213943   1.540433
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.3366148   1.1378616   1.570085
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         2.1082613   1.5436199   2.879443
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.5515312   1.0938550   2.200702
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.1511268   0.8319874   1.592684


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0067734    0.0008091   0.0127376
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0004766   -0.0000940   0.0010473
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.0091390   -0.0219316   0.0036537
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0514573    0.0255841   0.0773305
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0145126    0.0023038   0.0267214
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0028564   -0.0277525   0.0334653
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0065904    0.0002584   0.0129224
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0145880    0.0025407   0.0266353
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0150750   -0.0984598   0.0683098
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.0502445    0.0080079   0.0924811
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.0337874    0.0010759   0.0664989
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.0373503   -0.0041737   0.0788743
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0658661    0.0300218   0.1017104
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0905627    0.0652546   0.1158707
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0087326   -0.0324119   0.0498771
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0347715    0.0211162   0.0484268
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0291129    0.0140752   0.0441507


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.4489569   -0.0865616   0.7205419
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0045755   -0.0009185   0.0100394
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.1173784   -0.2932947   0.0346094
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.3999830    0.1738013   0.5642448
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.2977278    0.0041652   0.5047510
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0358589   -0.4360510   0.3526915
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.1086744   -0.0019467   0.2070823
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.2606927    0.0067947   0.4496855
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0455928   -0.3307759   0.1784760
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.5012195   -0.1084738   0.7755635
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.3971743   -0.1158955   0.6743433
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.3451444   -0.1615973   0.6308222
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.1543317    0.0659055   0.2343871
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.3213726    0.2272867   0.4040025
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0759470   -0.3605846   0.3724212
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.2230914    0.1312146   0.3052520
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.3169701    0.1315554   0.4627985

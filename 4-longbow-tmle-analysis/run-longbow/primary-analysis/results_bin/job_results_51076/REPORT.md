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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        hhwealth_quart    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       17      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        4      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       14      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        6      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       16      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        4      82
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               0        9      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        3      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       14      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        3      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       12      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               0        7      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        4      55
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        9      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        7      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        5      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        2      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        5      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        2      31
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               1        2      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               0        7      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               1        2      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               1        1      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               0        7      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               1        1      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       13      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        2      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        4      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        1      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       24      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       12      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       20      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        5      90
Birth       ki1000108-IRC              INDIA                          Wealth Q4               0       80     388
Birth       ki1000108-IRC              INDIA                          Wealth Q4               1       11     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               1        8     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               0       83     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               1       16     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               1       10     388
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      278     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       15     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      147     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       10     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      149     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       12     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      195     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       10     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      810    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       32    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      635    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       52    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      500    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       38    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      917    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       65    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3089   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1     1062   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3292   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1910   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3570   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1776   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3308   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1587   19594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      127     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       56     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      146     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       63     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      158     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       61     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      144     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       67     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       16      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        5      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       14      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        5      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       16      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        4      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       15      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        3      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       15      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        4      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       14      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       13      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        4      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        8      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        2      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0        7      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        3      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0        7      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        2      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0        3      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        5      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        1      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       13      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        4      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        1      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       14      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       10      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        3      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       12      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        3      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       10      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        5      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       54     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       40     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       77     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       64     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       63     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       27     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       78     407
6 months    ki1000108-IRC              INDIA                          Wealth Q4               1       21     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               0       79     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               1       26     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       67     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               1       33     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       83     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               1       20     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      132     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       23     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      103     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       35     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      123     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       17     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      129     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       19     581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      435    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       67    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      556    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       49    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      366    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       43    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      468    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       36    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      117     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       24     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      112     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       33     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      109     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       30     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      106     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       32     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       50     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        2     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       45     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       49     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        3     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      220     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      119     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       98     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       77     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      104     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       91     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      125     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       91     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      623    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      120    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      431    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      139    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      382    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      103    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      700    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      210    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      142     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       75     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      127     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       76     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      122     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       77     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      129     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       68     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3879   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      863   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     2615   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1090   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     2976   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1181   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3109   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1090   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      914    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      226    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      830    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      373    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      887    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      324    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      977    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      294    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       10      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1       11      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       10      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1       11      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0        9      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        8      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       11      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        7      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       10      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        8      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       12      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        7      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       14      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0        7      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1       10      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        7      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        4      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        4      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        6      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        8      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        2      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0        6      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        4      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        5      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        2      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        2      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        6      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        4      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        3      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0        8      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        8      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       10      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        6      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       12      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        5      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       13      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        4      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        5      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       10      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       11      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       68     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       70     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       69     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       59     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       69     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       31     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       51     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       54     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       55     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       46     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       64     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       39     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      123     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       33     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0       60     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       69     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0       95     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       47     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      108     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       41     576
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0       77     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       50     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       64     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       63     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0       72     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       54     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0       63     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       56     499
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        3     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       30     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1       10     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        4     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       37     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        4     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      103    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      300    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       37    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1      166    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0       41    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1      172    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0       36    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1      183    1038
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      372    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      316    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      144    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      345    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      140    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      283    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      281    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      564    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0       97     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       63     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0       72     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       57     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0       75     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       71     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0       78     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       61     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     1425    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      806    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0      826    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1194    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     1031    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1175    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     1109    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1057    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      800    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      341    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      624    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      546    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      678    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      488    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      783    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      487    4747


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




# Results Detail

## Results Plots
![](/tmp/d69f4c7e-0ac7-4c56-9124-e29587081818/bc2442a1-708c-478b-a523-df38c2620d1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d69f4c7e-0ac7-4c56-9124-e29587081818/bc2442a1-708c-478b-a523-df38c2620d1e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d69f4c7e-0ac7-4c56-9124-e29587081818/bc2442a1-708c-478b-a523-df38c2620d1e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d69f4c7e-0ac7-4c56-9124-e29587081818/bc2442a1-708c-478b-a523-df38c2620d1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0517415   0.0263530   0.0771300
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0622978   0.0246347   0.0999610
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0750718   0.0340945   0.1160491
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0490249   0.0193084   0.0787414
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0379758   0.0251600   0.0507916
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0772223   0.0572763   0.0971683
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0674605   0.0454942   0.0894269
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0678905   0.0521646   0.0836164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3231091   0.3154519   0.3307664
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3234941   0.3158326   0.3311556
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3233543   0.3156887   0.3310199
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3233490   0.3156896   0.3310085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3121852   0.2704561   0.3539144
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2945739   0.2548537   0.3342942
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3003797   0.2576834   0.3430760
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2927658   0.2559294   0.3296021
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4243608   0.3236697   0.5250519
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1479503   0.0729142   0.2229864
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3270034   0.2295199   0.4244870
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3003502   0.2029930   0.3977074
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2089986   0.1277481   0.2902491
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2225863   0.1397387   0.3054340
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3201943   0.2299181   0.4104704
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1934289   0.1155922   0.2712656
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1530453   0.0952807   0.2108100
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2467652   0.1732861   0.3202443
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1246443   0.0695012   0.1797875
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1295509   0.0741087   0.1849931
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1324819   0.1026887   0.1622751
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0812057   0.0593867   0.1030246
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1053348   0.0754337   0.1352359
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0715493   0.0489639   0.0941346
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1689004   0.1058251   0.2319757
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2279494   0.1592126   0.2966862
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2126291   0.1433492   0.2819090
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2294157   0.1586018   0.3002295
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.3662203   0.3174080   0.4150326
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4166683   0.3488612   0.4844754
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4479570   0.3844231   0.5114909
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4294917   0.3700745   0.4889088
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1945478   0.1692340   0.2198616
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2330982   0.2002013   0.2659951
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1992750   0.1650894   0.2334605
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2164790   0.1910686   0.2418894
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3490462   0.2853799   0.4127125
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3682579   0.3015909   0.4349249
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3866489   0.3195109   0.4537870
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3381210   0.2720282   0.4042138
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2239505   0.2102610   0.2376399
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2692836   0.2542314   0.2843358
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2683295   0.2542422   0.2824168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2550537   0.2417133   0.2683942
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2187398   0.1902048   0.2472747
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2914212   0.2628039   0.3200385
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2631761   0.2363385   0.2900137
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2349960   0.2101550   0.2598369
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.5238095   0.3088018   0.7388172
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.5238095   0.3088018   0.7388172
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.4705882   0.2317634   0.7094131
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.3888889   0.1622036   0.6155741
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7071292   0.6140517   0.8002067
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7699609   0.6825389   0.8573828
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7186851   0.6282844   0.8090858
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6467597   0.5474548   0.7460646
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3098240   0.2187171   0.4009309
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5179826   0.4233553   0.6126098
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4592119   0.3616801   0.5567437
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3787124   0.2837640   0.4736609
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2169215   0.1563616   0.2774814
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4821003   0.4001960   0.5640047
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3404459   0.2638873   0.4170045
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2899749   0.2187848   0.3611649
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4017819   0.3163222   0.4872416
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4914163   0.4044163   0.5784162
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4367966   0.3494183   0.5241750
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4799545   0.3904965   0.5694126
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7488228   0.7064930   0.7911525
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8104833   0.7568461   0.8641206
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8022306   0.7490618   0.8553993
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8428923   0.7959358   0.8898487
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5066223   0.4713310   0.5419136
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6998969   0.6604257   0.7393681
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6576144   0.6147872   0.7004416
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6527207   0.6217066   0.6837348
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3975855   0.3215987   0.4735723
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4493023   0.3629814   0.5356231
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4906761   0.4091387   0.5722135
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.4494904   0.3654920   0.5334888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4115499   0.3872259   0.4358740
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5654969   0.5411924   0.5898015
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5096444   0.4863067   0.5329821
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4941771   0.4703260   0.5180282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3129110   0.2804948   0.3453271
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4551111   0.4230092   0.4872131
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4147580   0.3837594   0.4457567
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3839035   0.3538304   0.4139766


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0575980   0.0416028   0.0735933
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613316   0.0528136   0.0698496
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3233133   0.3156536   0.3309730
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1617900   0.1318200   0.1917600
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4086486   0.3769522   0.4403450
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2522280   0.2381653   0.2662906
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4805195   0.3681932   0.5928458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7909441   0.7661948   0.8156934
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907805   0.4776507   0.5039102
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3922477   0.3752571   0.4092384


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.6753247   0.2840672   1.6054774
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3370064   0.6547919   2.7300066
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8272727   0.3683993   1.8577130
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2040212   0.5525069   2.6237991
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4509018   0.6960012   3.0245868
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9474968   0.4344054   2.0666184
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0334609   1.3320947   3.1041061
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.7764090   1.1124570   2.8366302
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7877305   1.1900720   2.6855354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0011915   1.0001742   1.0022098
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0007588   0.9996988   1.0018199
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0007424   0.9997067   1.0017792
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9435870   0.8499717   1.0475129
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9621842   0.8575776   1.0795506
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9377950   0.8612993   1.0210847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3486427   0.1989573   0.6109437
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7705787   0.5264926   1.1278251
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7077709   0.4734727   1.0580116
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0650135   0.6222379   1.8228619
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.5320401   0.9494244   2.4721789
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9255031   0.5283947   1.6210534
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.6123664   0.9965057   2.6088415
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8144275   0.4548135   1.4583826
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8464870   0.4777842   1.4997153
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6129568   0.4319070   0.8699003
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7950883   0.5535051   1.1421131
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5400682   0.3665635   0.7956974
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3496085   0.8353181   2.1805384
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2589024   0.7669627   2.0663785
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.3582896   0.8365274   2.2054875
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1377530   0.9273752   1.3958557
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2231899   1.0130163   1.4769688
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1727686   0.9745982   1.4112341
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1981539   0.9938582   1.4444444
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0242982   0.8298324   1.2643358
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1127290   0.9398102   1.3174637
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0550406   0.8160954   1.3639466
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1077299   0.8613985   1.4245041
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9686999   0.7417426   1.2651013
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2024250   1.1138446   1.2980498
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1981647   1.1128175   1.2900575
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1388847   1.0565782   1.2276028
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3322735   1.1344626   1.5645759
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2031471   1.0185686   1.4211737
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0743176   0.9092711   1.2693227
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0000000   0.5596234   1.7869160
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         0.8983957   0.4677295   1.7256019
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         0.7424242   0.3639422   1.5145091
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0888546   0.9147837   1.2960488
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0163419   0.8474786   1.2188519
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9146273   0.7472968   1.1194255
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.6718604   1.1838907   2.3609590
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4821700   1.0327761   2.1271096
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2223468   0.8310648   1.7978523
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.2224643   1.6115388   3.0649885
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.5694428   1.1021934   2.2347718
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.3367732   0.9262761   1.9291901
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2230921   0.9283811   1.6113580
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0871486   0.8120112   1.4555121
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1945649   0.9011536   1.5835095
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0823433   0.9924150   1.1804205
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0713223   0.9822905   1.1684237
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1256232   1.0405875   1.2176078
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.3814963   1.2647584   1.5090092
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2980368   1.1820660   1.4253854
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2883773   1.1861698   1.3993917
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1300772   0.8617987   1.4818710
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2341399   0.9576196   1.5905078
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1305504   0.8653147   1.4770860
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3740664   1.2811384   1.4737349
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2383537   1.1539543   1.3289260
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2007707   1.1142140   1.2940515
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4544429   1.2852342   1.6459290
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3254826   1.1709083   1.5004626
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2268777   1.0815338   1.3917540


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0048997   -0.0632572    0.0534577
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0058566   -0.0151406    0.0268537
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0233558    0.0113540    0.0353576
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0002041   -0.0000325    0.0004408
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0116986   -0.0323140    0.0089167
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1235478   -0.2085659   -0.0385297
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0367016   -0.0351733    0.1085766
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0087447   -0.0414877    0.0589770
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0359473   -0.0607048   -0.0111897
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0424673   -0.0137217    0.0986562
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0424283    0.0049580    0.0798987
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0166782   -0.0049541    0.0383105
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0136989   -0.0408739    0.0682718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0274332    0.0161544    0.0387121
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0334882    0.0085954    0.0583810
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0432900   -0.2266751    0.1400950
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0079245   -0.0724273    0.0882764
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1058239    0.0250492    0.1865985
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1129396    0.0587006    0.1671785
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0451119   -0.0288889    0.1191127
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0421213    0.0106803    0.0735623
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1101466    0.0810056    0.1392876
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0414389   -0.0235319    0.1064097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0792305    0.0588362    0.0996249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0793368    0.0519240    0.1067495


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0422466   -0.6888711    0.3568023
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1016798   -0.3462942    0.4005922
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3808118    0.1595437    0.5438263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0006314   -0.0001006    0.0013628
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0389322   -0.1098481    0.0274523
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4107130   -0.7254687   -0.1533742
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1493756   -0.1994203    0.3967404
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0540495   -0.3132783    0.3186347
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3723766   -0.6499319   -0.1415124
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2009166   -0.1134237    0.4265128
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1038260    0.0069840    0.1912236
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0789590   -0.0289303    0.1755356
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0377646   -0.1251079    0.1770593
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1091289    0.0630862    0.1529090
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1327696    0.0279700    0.2262702
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0900901   -0.5479021    0.2323181
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0110825   -0.1079357    0.1173153
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2545998    0.0322294    0.4258749
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3423853    0.1586058    0.4860232
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1009454   -0.0810812    0.2523234
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0532545    0.0124082    0.0924114
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1785865    0.1294761    0.2249264
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0943887   -0.0664906    0.2309994
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1614378    0.1185726    0.2022184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2022619    0.1285170    0.2697666

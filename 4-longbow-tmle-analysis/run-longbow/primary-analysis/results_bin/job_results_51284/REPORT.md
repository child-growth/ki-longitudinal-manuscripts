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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       17      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       16      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        2      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       20      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        0      76
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       14      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        3      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       15      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        0      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        0      54
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        9      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        8      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        5      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        7      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      30
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       30      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       12      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       19      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       22      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        3      88
Birth       ki1000108-IRC              INDIA                          Wealth Q4               0       72     343
Birth       ki1000108-IRC              INDIA                          Wealth Q4               1        7     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1               0       69     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1               1       21     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2               0       71     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2               1       12     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3               0       77     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3               1       14     343
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3486   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1       49   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3896   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1       72   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     4169   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1       83   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3886   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1       50   15691
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      153     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      168     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1        3     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      184     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      173     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1        1     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        1      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       15      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        2      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       16      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        1      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0      58
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      153     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        2     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      137     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        0     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      137     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        3     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      148     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        0     580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      499    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        2    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      598    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        7    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      408    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        1    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      502    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        2    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      140     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      144     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      136     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        3     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      136     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        2     563
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4670   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1       61   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3653   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1       47   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     4092   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1       61   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     4132   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1       60   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1135    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1        5    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1194    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       11    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1198    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       14    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1267    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1        3    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       17      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        0      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       18      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        0      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       18      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       19      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        0      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       17      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        0      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       17      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        0      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        8      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0      59
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      155     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        1     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      125     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        5     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      140     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        2     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      148     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        1     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      124     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        3     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      121     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        5     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      123     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        3     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      115     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        4     498
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     2148    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1       67    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     1921    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1       98    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     2118    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1       82    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     2074    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1       86    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1117    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       20    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1130    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       36    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1129    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       33    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1225    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       40    4730


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/683b8460-3d1c-4337-b8ee-e52d8fc18778/6794b925-52e0-4dda-9d3a-590f80eae4b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/683b8460-3d1c-4337-b8ee-e52d8fc18778/6794b925-52e0-4dda-9d3a-590f80eae4b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/683b8460-3d1c-4337-b8ee-e52d8fc18778/6794b925-52e0-4dda-9d3a-590f80eae4b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/683b8460-3d1c-4337-b8ee-e52d8fc18778/6794b925-52e0-4dda-9d3a-590f80eae4b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         Wealth Q4            NA                0.0886076   0.0258514   0.1513638
Birth       ki1000108-IRC       INDIA         Wealth Q1            NA                0.2333333   0.1458244   0.3208423
Birth       ki1000108-IRC       INDIA         Wealth Q2            NA                0.1445783   0.0688105   0.2203461
Birth       ki1000108-IRC       INDIA         Wealth Q3            NA                0.1538462   0.0796076   0.2280847
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q4            NA                0.1007752   0.0640176   0.1375328
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q1            NA                0.0833333   0.0381602   0.1285064
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q2            NA                0.0496454   0.0137682   0.0855226
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q3            NA                0.0645161   0.0291863   0.0998460
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                0.0524284   0.0368973   0.0679594
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q1            NA                0.0461421   0.0300585   0.0622256
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q2            NA                0.0315187   0.0165374   0.0465000
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q3            NA                0.0340595   0.0224678   0.0456513
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                0.0140074   0.0091011   0.0189137
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            NA                0.0180292   0.0135647   0.0224937
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            NA                0.0196858   0.0153465   0.0240250
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            NA                0.0130499   0.0085823   0.0175174
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                0.0107527   0.0033404   0.0181650
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q1            NA                0.0175747   0.0067761   0.0283733
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q2            NA                0.0123711   0.0025319   0.0222103
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q3            NA                0.0121145   0.0049976   0.0192315
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                0.0127894   0.0089538   0.0166250
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            NA                0.0122873   0.0084408   0.0161337
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            NA                0.0142481   0.0101081   0.0183881
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            NA                0.0146956   0.0106531   0.0187380
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                0.0310532   0.0239068   0.0381997
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            NA                0.0467465   0.0367906   0.0567025
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            NA                0.0376867   0.0276625   0.0477108
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            NA                0.0407791   0.0313640   0.0501943
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                0.0179040   0.0054789   0.0303292
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q1            NA                0.0301041   0.0205866   0.0396216
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q2            NA                0.0285958   0.0181445   0.0390471
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q3            NA                0.0312695   0.0224642   0.0400747


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0781893   0.0586874   0.0976912
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0417529   0.0344692   0.0490367
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0161876   0.0138223   0.0185529
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
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.8800971   0.5575852   1.389153
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.6011768   0.3437144   1.051494
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.6496392   0.4142788   1.018713
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            Wealth Q4         1.2871225   0.8367578   1.979885
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            Wealth Q4         1.4053869   0.9312313   2.120969
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            Wealth Q4         0.9316413   0.5843470   1.485343
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.6344464   0.6491256   4.115405
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.1505155   0.4016045   3.295993
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.1266520   0.4554533   2.786992
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            Wealth Q4         0.9607382   0.6284195   1.468793
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            Wealth Q4         1.1140570   0.7348961   1.688841
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            Wealth Q4         1.1490436   0.7734284   1.707076
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q1            Wealth Q4         1.5053671   1.1002236   2.059700
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q2            Wealth Q4         1.2136144   0.8554543   1.721728
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q3            Wealth Q4         1.3132002   0.9468075   1.821379
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q1            Wealth Q4         1.6814154   0.7865918   3.594187
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q2            Wealth Q4         1.5971699   0.7270999   3.508393
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q3            Wealth Q4         1.7465043   0.8227781   3.707290


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Wealth Q4            NA                 0.0688268    0.0087091   0.1289445
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q4            NA                -0.0225859   -0.0504264   0.0052547
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0106755   -0.0231603   0.0018094
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.0021802   -0.0020562   0.0064167
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0021815   -0.0043653   0.0087283
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.0008611   -0.0023066   0.0040287
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.0076947    0.0009956   0.0143939
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                 0.0093687   -0.0009914   0.0197288


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Wealth Q4            NA                 0.4371776   -0.0857091   0.7082377
Birth       ki1135781-COHORTS   GUATEMALA     Wealth Q4            NA                -0.2888617   -0.6914201   0.0178877
Birth       ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                -0.2556816   -0.5874418   0.0067438
Birth       kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.1346861   -0.1726143   0.3614540
6 months    ki1135781-COHORTS   PHILIPPINES   Wealth Q4            NA                 0.1686636   -0.5227820   0.5461463
6 months    kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.0630799   -0.2008480   0.2690004
24 months   kiGH5241-JiVitA-3   BANGLADESH    Wealth Q4            NA                 0.1985838    0.0098405   0.3513491
24 months   kiGH5241-JiVitA-4   BANGLADESH    Wealth Q4            NA                 0.3435190   -0.2023226   0.6415544

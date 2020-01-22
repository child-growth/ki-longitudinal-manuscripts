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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        exclfeed6    wast_rec90d   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0        7    114  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11    114  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       33    114  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       63    114  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        6     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       62    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       99    162  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     94  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     94  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       19     94  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       74     94  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        6     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       28     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     75  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     75  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       11     75  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       64     75  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     50  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     50  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        9     50  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       41     50  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        7     16  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        9     16  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     16  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     16  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          1                      0        0     19  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          1                      1        0     19  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          0                      0       11     19  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          0                      1        8     19  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       15     34  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       16     34  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     34  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        3     34  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0      144    238  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       81    238  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6    238  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7    238  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0    108  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0    108  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100    108  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8    108  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       31    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       45    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       98    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1      134    308  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      180   1602  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      316   1602  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0      406   1602  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      700   1602  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      192    594  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      251    594  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       70    594  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       81    594  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     34  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     34  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22     34  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     34  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2000   4526  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1503   4526  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      598   4526  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      425   4526  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      983   1841  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      372   1841  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      352   1841  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      134   1841  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        2     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        5     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0       10     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       41     58  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0     72  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        0     72  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       20     72  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       52     72  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     44  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        0     44  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     44  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       36     44  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       10     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       13     14  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      9  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      9  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      9  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      9  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          1                      0        0     13  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          1                      1        0     13  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          0                      0        7     13  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          0                      1        6     13  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       1                      0        6     15  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       1                      1        7     15  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        0     15  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        2     15  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       45     94  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       43     94  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     94  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     94  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     48  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     48  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48     48  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     48  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       14    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       38    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       26    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1      107    185  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       37    678  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1      166    678  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0      110    678  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1      365    678  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       54    228  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      116    228  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       24    228  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       34    228  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0      4  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      702   2832  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1503   2832  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      202   2832  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      425   2832  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      141    526  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    526  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       77    526  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    526  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0        5     56  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1        6     56  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       23     56  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       22     56  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     90  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1     90  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       42     90  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       47     90  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       11     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       38     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        6     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       18     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       40     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       28     36  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3      7  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      7  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      7  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      7  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          1                      0        0      6  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          1                      1        0      6  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          0                      0        4      6  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          0                      1        2      6  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       1                      0        9     19  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       1                      1        9     19  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     19  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        1     19  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       99    144  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       38    144  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        3    144  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4    144  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     60  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     60  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52     60  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     60  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       17    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        7    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       72    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       27    123  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      143    924  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      150    924  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0      296    924  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1      335    924  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      138    366  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    366  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       46    366  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       47    366  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     30  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     30  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18     30  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     30  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1298   1694  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1694  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      396   1694  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1694  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      842   1315  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      143   1315  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      275   1315  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       55   1315  wast_rec90d      


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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/7d5654be-b698-4665-9a6a-399c96f805a1/f82903d9-ac49-47ac-8e3a-13a25728a0ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d5654be-b698-4665-9a6a-399c96f805a1/f82903d9-ac49-47ac-8e3a-13a25728a0ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d5654be-b698-4665-9a6a-399c96f805a1/f82903d9-ac49-47ac-8e3a-13a25728a0ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d5654be-b698-4665-9a6a-399c96f805a1/f82903d9-ac49-47ac-8e3a-13a25728a0ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6111111   0.3920367   0.8301855
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6562500   0.5578656   0.7546344
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5921053   0.4748033   0.7094072
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5775862   0.5129264   0.6422461
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.6370968   0.5912320   0.6829616
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.6329114   0.6028311   0.6629917
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5665914   0.5166081   0.6165747
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5364238   0.4464027   0.6264450
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4290608   0.4127131   0.4454085
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4154448   0.3849924   0.4458971
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2745387   0.2499218   0.2991557
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2757202   0.2358958   0.3155446
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7307692   0.6140851   0.8474534
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8045113   0.7374219   0.8716007
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.8177340   0.7659291   0.8695389
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.7684211   0.7311579   0.8056842
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6823529   0.6118839   0.7528220
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5862069   0.4571188   0.7152950
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6816327   0.6621853   0.7010800
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6778309   0.6412467   0.7144151
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.6189189   0.5693869   0.6684509
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.5064103   0.4278807   0.5849398
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5454545   0.2423555   0.8485536
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4888889   0.3352411   0.6425366
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5119454   0.4487526   0.5751382
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5309033   0.4898337   0.5719730
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4945055   0.4294359   0.5595751
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5053763   0.3987212   0.6120315
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1451777   0.1236462   0.1667091
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1666667   0.1272693   0.2060640


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.6342072   0.6090524   0.6593621
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4259832   0.4115786   0.4403878
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2748506   0.2539041   0.2957971
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.7831858   0.7527627   0.8136090
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6807910   0.6636189   0.6979630
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.5855513   0.5434121   0.6276905
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5248918   0.4904236   0.5593599
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1505703   0.1316510   0.1694897


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0738636   0.7282183   1.5835679
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.6990889
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9754789   0.7769013   1.2248135
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 0.9934305   0.9113118   1.0829490
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9467560   0.7832370   1.1444135
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9682655   0.8914904   1.0516525
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0043033   0.8472828   1.1904232
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1009102   0.9194229   1.3182216
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 0.9396956   0.8676281   1.0177493
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8590963   0.6736130   1.0956535
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9944226   0.9355298   1.0570228
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.8182174   0.6871988   0.9742156
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.8962963   0.4731967   1.6977022
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9350649   0.4411401   1.9820154
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.0370312   0.8964221   1.1996956
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0219833   0.7968052   1.3107970
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1480186   0.8684264   1.5176264


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0380117   -0.1640633    0.2400867
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899    0.0282857
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0109364   -0.1118324    0.0899596
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0028895   -0.0407593    0.0349802
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0076689   -0.0339330    0.0185953
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0030776   -0.0108922    0.0047370
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0003119   -0.0120477    0.0126715
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0530146   -0.0439657    0.1499948
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0345481   -0.0792460    0.0101497
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0244582   -0.0623411    0.0134247
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0008417   -0.0100148    0.0083314
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0333676   -0.0612522   -0.0054830
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0454545   -0.3193804    0.2284714
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0152439   -0.1895523    0.1590645
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0129464   -0.0385156    0.0644084
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0027623   -0.0289795    0.0345040
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0053927   -0.0058714    0.0166567


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0585586   -0.3102443    0.3235521
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925    0.0750564
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0188180   -0.2080360    0.1407623
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0045561   -0.0660751    0.0534128
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0137208   -0.0618835    0.0322574
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0072247   -0.0257407    0.0109571
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0011347   -0.0448638    0.0451083
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0676393   -0.0651972    0.1839102
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0441123   -0.1029591    0.0115948
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0371765   -0.0967690    0.0191781
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0012363   -0.0148018    0.0121477
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0569849   -0.1060608   -0.0100865
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0909091   -0.8045548    0.3405118
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0551471   -0.9164156    0.4190533
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0246649   -0.0785693    0.1180180
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0055549   -0.0604002    0.0674077
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0358150   -0.0418772    0.1077137

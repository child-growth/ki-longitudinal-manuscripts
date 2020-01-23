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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        predexfd6    ever_stunted   n_cell       n  outcome_variable 
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------  -----------------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       32     195  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       40     195  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       58     195  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       65     195  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       20     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      134     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        1     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        7     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       82     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       95     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0        6     199  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        5     199  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      140     199  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       48     199  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       29     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       53     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       61     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       94     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     212  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       91     212  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      120     212  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     197  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     197  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       28     197  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      168     197  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      14  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       13      14  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      13  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      13  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        4      13  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        9      13  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        4      27  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       19      27  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        2      27  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1        2      27  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      132     633  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       63     633  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      263     633  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      175     633  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      401    2023  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      350    2023  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      566    2023  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      706    2023  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      130     471  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      222     471  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       34     471  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       85     471  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175  ever_stunted     
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6247   10809  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2191   10809  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1776   10809  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      595   10809  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1565    3397  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1125    3397  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      393    3397  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      314    3397  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       60     195  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       12     195  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       95     195  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     195  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       22     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      143     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       18     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0        7     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        1     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      134     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       43     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       11     199  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     199  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      176     199  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     199  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       54     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       28     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       95     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       60     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     212  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      146     212  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65     212  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     197  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     197  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      136     197  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       60     197  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       11      14  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      14  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      13  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      13  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        8      13  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      13  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        8      27  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       15      27  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        3      27  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1        1      27  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      169     633  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       26     633  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      363     633  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       75     633  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      582    2023  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      169    2023  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      923    2023  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      349    2023  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      286     471  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       66     471  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       88     471  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       31     471  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175  ever_stunted     
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7290   10806  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1146   10806  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2061   10806  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      309   10806  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2442    3369  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3369  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      615    3369  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3369  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       31     153  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       28     153  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       57     153  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       37     153  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       20     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        9     163  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        1     141  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        6     141  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       82     141  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       52     141  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0        6     186  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        5     186  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      139     186  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       36     186  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       29     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       25     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       60     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       34     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     145  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     145  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       90     145  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       55     145  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     135  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     135  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       26     135  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      108     135  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      11  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       10      11  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      11  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      11  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       8  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       8  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          0                       0        4       8  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          0                       1        4       8  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        4      11  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        4      11  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        2      11  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        1      11  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91  ever_stunted     
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       75     456  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       37     456  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      244     456  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      100     456  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      328    1407  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      181    1407  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      541    1407  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      357    1407  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      126     369  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      156     369  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       33     369  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       54     369  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162  ever_stunted     
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     3715    6170  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1053    6170  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1115    6170  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      287    6170  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1559    3084  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      890    3084  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      391    3084  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      244    3084  ever_stunted     


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/15bc9645-123f-492b-93f7-3f9d2787590b/6e337687-46aa-4cb1-8e6d-f9f72f3a4cf7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15bc9645-123f-492b-93f7-3f9d2787590b/6e337687-46aa-4cb1-8e6d-f9f72f3a4cf7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15bc9645-123f-492b-93f7-3f9d2787590b/6e337687-46aa-4cb1-8e6d-f9f72f3a4cf7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15bc9645-123f-492b-93f7-3f9d2787590b/6e337687-46aa-4cb1-8e6d-f9f72f3a4cf7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5555556    0.4404833   0.6706278
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5284553    0.4400094   0.6169012
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                0.4545455    0.1595511   0.7495398
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2553191    0.1928321   0.3178062
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                0.6463415    0.5426406   0.7500423
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                0.6064516    0.5293794   0.6835238
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3230769    0.2573873   0.3887665
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3995434    0.3536366   0.4454502
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                0.4660453    0.4303590   0.5017316
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                0.5550314    0.5277143   0.5823486
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6306818    0.5802106   0.6811530
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7142857    0.6330330   0.7955385
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                0.4000000    0.2241925   0.5758075
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                0.4275862    0.3468301   0.5083423
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2596587    0.2483626   0.2709548
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2509490    0.2326686   0.2692293
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4182156    0.3962961   0.4401352
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4441301    0.4025411   0.4857192
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1666667    0.0803624   0.2529709
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2276423    0.1533493   0.3019352
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                0.3414634    0.2386094   0.4443175
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                0.3870968    0.3102535   0.4639401
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1333333    0.0855838   0.1810829
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1712329    0.1359256   0.2065402
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                0.2250333    0.1951588   0.2549078
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                0.2743711    0.2498444   0.2988977
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1875000    0.1466821   0.2283179
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2605042    0.1815616   0.3394468
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1358464    0.1274555   0.1442373
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1303797    0.1161436   0.1446159
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0884658    0.0748432   0.1020885
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1086957    0.0835719   0.1338194
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4745763    0.3467401   0.6024125
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.3936170    0.2945296   0.4927044
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                0.4545455    0.1594991   0.7495918
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                0.2057143    0.1456633   0.2657653
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                0.4629630    0.3295191   0.5964068
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                0.3617021    0.2642383   0.4591660
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3303571    0.2431546   0.4175597
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2906977    0.2426600   0.3387354
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                0.3555992    0.3139984   0.3972000
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                0.3975501    0.3655302   0.4295701
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5531915    0.4950868   0.6112962
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6206897    0.5185928   0.7227865
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                0.4285714    0.2447034   0.6124395
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                0.4626866    0.3780033   0.5473698
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2208473    0.2073002   0.2343945
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2047076    0.1794037   0.2300114
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3634136    0.3416925   0.3851348
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3842520    0.3383446   0.4301593


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5384615   0.4683114   0.6086117
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2663317   0.2047606   0.3279027
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         NA                   NA                0.6202532   0.5583342   0.6821721
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6518047   0.6087352   0.6948741
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2577482   0.2478575   0.2676389
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4236091   0.4038600   0.4433581
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         NA                   NA                0.3713080   0.3096658   0.4329502
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2059448   0.1693853   0.2425043
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1346474   0.1274032   0.1418916
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0926091   0.0806150   0.1046031
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4248366   0.3462528   0.5034204
6-24 months                  ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2204301   0.1606956   0.2801646
6-24 months                  ki0047075b-MAL-ED         PERU         NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1101329-Keneba          GAMBIA       NA                   NA                0.3823738   0.3569722   0.4077755
6-24 months                  ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5691057   0.5185109   0.6197005
6-24 months                  ki1148112-LCNI-5          MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2171799   0.2048085   0.2295513
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3677043   0.3477044   0.3877041


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9512195   0.7288348   1.2414591
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    1                 0.5617021   0.2807235   1.1239146
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    1                 0.9382836   0.7646165   1.1513957
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0501122   0.6736522   1.6369510
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.2366819   0.9791095   1.5620133
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    1                 1.1909389   1.0873202   1.3044322
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1325611   0.9855043   1.3015617
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    1                 1.0689655   0.6625309   1.7247304
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9664570   0.8897013   1.0498346
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0619645   0.9558676   1.1798376
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.3658537   0.7405891   2.5190165
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    1                 1.1336406   0.7903243   1.6260930
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.7972350   0.5064696   6.3775866
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.2842466   0.8495335   1.9414058
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    1                 1.2192466   1.0389244   1.4308666
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3893557   0.9566803   2.0177163
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9597588   0.8463691   1.0883395
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2286736   0.9305406   1.6223246
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.8294073   0.5736525   1.1991868
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    1                 0.4525714   0.2221214   0.9221125
6-24 months                  ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU         0                    1                 0.7812766   0.5265540   1.1592222
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.8799497   0.6444783   1.2014548
6-24 months                  ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA       0                    1                 1.1179724   0.9699446   1.2885915
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1220159   0.9230817   1.3638226
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    1                 1.0796020   0.6771639   1.7212087
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9269189   0.8114303   1.0588447
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0573405   0.9270825   1.2059002


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0170940   -0.1086595   0.0744715
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1882138   -0.4731562   0.0967286
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                -0.0260883   -0.1106243   0.0584477
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0013174   -0.0112602   0.0138950
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0529104   -0.0026108   0.1084316
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0559518    0.0276319   0.0842717
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0211229   -0.0032662   0.0455119
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0228571   -0.1374523   0.1831666
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0019105   -0.0065059   0.0026848
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0053935   -0.0041631   0.0149500
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0384615   -0.0334875   0.1104106
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                 0.0298446   -0.0541688   0.1138580
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0068035   -0.0151879   0.0287949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0262243   -0.0148896   0.0673383
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0310221    0.0066962   0.0553480
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0184448   -0.0041912   0.0410808
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0011990   -0.0048308   0.0024329
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0041432   -0.0017125   0.0099989
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0497397   -0.1493077   0.0498284
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2341153   -0.5175303   0.0492997
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                -0.0643143   -0.1695637   0.0409351
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0299185   -0.1050405   0.0452034
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0267746   -0.0067473   0.0602966
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0159142   -0.0119370   0.0437654
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                 0.0282187   -0.1392369   0.1956743
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0036674   -0.0099271   0.0025923
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0042906   -0.0059758   0.0145571


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0317460   -0.2166960    0.1250897
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.7066895   -2.2000739    0.0897744
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                -0.0420607   -0.1878451    0.0858315
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0021474   -0.0184658    0.0223435
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1407240   -0.0204199    0.2764201
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.1071879    0.0510669    0.1599898
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0324067   -0.0059106    0.0692645
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0540541   -0.4123446    0.3664338
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0074123   -0.0253746    0.0102353
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0127321   -0.0100939    0.0350424
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1875000   -0.2476954    0.4708995
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                 0.0803769   -0.1761953    0.2809811
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0331037   -0.0733606    0.1290081
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1643564   -0.1359025    0.3852464
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.1211538    0.0210141    0.2110503
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0895619   -0.0265745    0.1925597
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0089044   -0.0362016    0.0176737
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0447390   -0.0212395    0.1064549
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1170795   -0.3786482    0.0948621
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                -1.0620843   -2.8567327   -0.1025372
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                -0.1613308   -0.4590807    0.0756582
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0995829   -0.3803091    0.1240494
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0700221   -0.0219315    0.1537018
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0279635   -0.0223318    0.0757845
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                 0.0617761   -0.3868765    0.3652901
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0168865   -0.0461937    0.0115996
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0116687   -0.0166038    0.0391550

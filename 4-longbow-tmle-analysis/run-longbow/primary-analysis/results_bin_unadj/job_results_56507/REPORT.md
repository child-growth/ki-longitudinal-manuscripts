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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        exclfeed36    ever_swasted   n_cell       n  outcome_variable 
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       31     251  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        1        2     251  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        0      208     251  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       10     251  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        0       16     224  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        0      204     224  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        1        4     224  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        0        9     234  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        1        1     234  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        0      212     234  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        1       12     234  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        0        4     235  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        1        0     235  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        0      228     235  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        1        3     235  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        0       10     286  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        1        0     286  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        0      272     286  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        1        4     286  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        4     276  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     276  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      260     276  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       12     276  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        5     250  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     250  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      237     250  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        8     250  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9       9  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       9  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       9  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       9  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        0        0       4  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        1        0       4  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        0        3       4  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        1        1       4  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        0        4       9  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        1        0       9  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        0        4       9  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        1        1       9  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     173  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     173  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      159     173  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       14     173  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        0      159     635  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3     635  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      459     635  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        1       14     635  ever_swasted     
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        0      544    1974  ever_swasted     
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        1       79    1974  ever_swasted     
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        0     1115    1974  ever_swasted     
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        1      236    1974  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        0      330     524  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        1       90     524  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        0       74     524  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        1       30     524  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        0       47     271  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        1        0     271  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        0      222     271  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        1        2     271  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9404   12568  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      370   12568  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2698   12568  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       96   12568  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3378    4559  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      142    4559  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      989    4559  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       50    4559  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       32     250  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        1     250  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      211     250  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        1        6     250  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        0       16     224  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        0      205     224  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        1        3     224  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        0        9     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        1        1     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        0      216     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        1        6     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        0        4     233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        1        0     233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        0      228     233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        1        1     233  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        0       10     286  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        1        0     286  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        0      275     286  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        1        1     286  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        4     275  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     275  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      268     275  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        3     275  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        5     250  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     250  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      242     250  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        3     250  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        8       8  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       8  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       8  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       8  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        0        0       4  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        1        0       4  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        0        4       4  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        1        0       4  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        0        4       9  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        1        0       9  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        0        4       9  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        1        1       9  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     137  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     137  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      137     137  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     137  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      162     631  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        1        0     631  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      465     631  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        1        4     631  ever_swasted     
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        0      600    1960  ever_swasted     
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        1       20    1960  ever_swasted     
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        0     1276    1960  ever_swasted     
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        1       64    1960  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        0      389     510  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        1       21     510  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        0       92     510  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        1        8     510  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        0       47     268  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        1        0     268  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        0      221     268  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        1        0     268  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9535   12458  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      157   12458  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2726   12458  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1       40   12458  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3450    4433  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1       14    4433  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      963    4433  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1        6    4433  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        0       29     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        1        1     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        0      206     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        1        4     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        0       12     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        0      194     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        1        1     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        0        9     232  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        1        0     232  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        0      217     232  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        1        6     232  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        0        4     234  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        1        0     234  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        0      228     234  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        1        2     234  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        0        6     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        1        0     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        0      261     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        1        3     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        2     256  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     256  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      244     256  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       10     256  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        4     243  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     243  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      234     243  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        5     243  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9       9  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       9  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       9  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       9  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                        0        0       4  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                        1        0       4  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                        0        3       4  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                        1        1       4  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       1                        0        4       9  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       1                        1        0       9  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0                        0        5       9  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0                        1        0       9  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     177  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     177  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      156     177  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       21     177  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        0      149     613  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3     613  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        0      451     613  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        1       10     613  ever_swasted     
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        0      517    1904  ever_swasted     
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        1       62    1904  ever_swasted     
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        0     1148    1904  ever_swasted     
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        1      177    1904  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        0      347     526  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        1       75     526  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        0       78     526  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        1       26     526  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        0       45     258  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        1        0     258  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        0      211     258  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        1        2     258  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     6564    8820  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      228    8820  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1968    8820  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       60    8820  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3397    4578  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      138    4578  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      994    4578  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       49    4578  ever_swasted     


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/9301cb3f-d02a-4561-8c7c-67ba5fa2aad6/0a8b7381-e361-409c-a14e-daf3ef376f54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9301cb3f-d02a-4561-8c7c-67ba5fa2aad6/0a8b7381-e361-409c-a14e-daf3ef376f54/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9301cb3f-d02a-4561-8c7c-67ba5fa2aad6/0a8b7381-e361-409c-a14e-daf3ef376f54/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9301cb3f-d02a-4561-8c7c-67ba5fa2aad6/0a8b7381-e361-409c-a14e-daf3ef376f54/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1268058    0.1006698   0.1529418
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1746854    0.1544334   0.1949374
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2142857    0.1750061   0.2535653
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2884615    0.2013071   0.3756159
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0378555    0.0334907   0.0422204
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0343593    0.0269947   0.0417240
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0403409    0.0334364   0.0472454
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0481232    0.0347538   0.0614925
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0322581    0.0183469   0.0461692
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0477612    0.0363399   0.0591825
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0512195    0.0298604   0.0725786
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0800000    0.0267753   0.1332247
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0161989    0.0131056   0.0192923
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0144613    0.0099459   0.0189767
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0040416    0.0006666   0.0074166
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0061920   -0.0013383   0.0137222
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1070812    0.0818879   0.1322745
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1335849    0.1152619   0.1519079
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1777251    0.1412171   0.2142331
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2500000    0.1666999   0.3333001
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0335689    0.0287084   0.0384294
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0295858    0.0205970   0.0385746
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0390382    0.0323898   0.0456866
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0469799    0.0343377   0.0596220


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1595745   0.1434154   0.1757335
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2290076   0.1929956   0.2650196
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0370783   0.0333023   0.0408543
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0421145   0.0360504   0.0481786
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0428571   0.0338884   0.0518259
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0568627   0.0367445   0.0769810
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0158131   0.0132056   0.0184207
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045116   0.0014181   0.0076051
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1255252   0.1106396   0.1404109
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1920152   0.1583224   0.2257081
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0326531   0.0283158   0.0369903
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0408475   0.0350297   0.0466653


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.3775825   1.0874671   1.745095
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3461538   0.9454057   1.916775
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9076438   0.7118755   1.157249
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1929130   0.8574144   1.659689
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.4805970   0.9042366   2.424330
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5619048   0.7122754   3.425004
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8927330   0.6192260   1.287046
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5320655   0.3473637   6.757254
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2475106   0.9501014   1.638018
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4066667   0.9510304   2.080597
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8813454   0.6321884   1.228700
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2034335   0.8720674   1.660711


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0327687    0.0101184   0.0554190
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0147219   -0.0044202   0.0338640
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007772   -0.0026759   0.0011214
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0017736   -0.0016982   0.0052454
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0105991   -0.0017105   0.0229087
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0056432   -0.0056457   0.0169322
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003858   -0.0016002   0.0008286
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004700   -0.0013438   0.0022839
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0184440   -0.0032415   0.0401296
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0142901   -0.0038600   0.0324402
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009158   -0.0032325   0.0014008
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0018093   -0.0014843   0.0051030


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2053505    0.0512176   0.3344439
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0642857   -0.0228513   0.1439995
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0209622   -0.0733362   0.0288562
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0421135   -0.0440373   0.1211554
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2473118   -0.0960055   0.4830870
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0992431   -0.1193952   0.2751773
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0243971   -0.1033710   0.0489242
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1041859   -0.3985239   0.4261929
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1469349   -0.0437463   0.3027807
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0744217   -0.0245371   0.1638221
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0280477   -0.1017159   0.0406946
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0442950   -0.0400166   0.1217717

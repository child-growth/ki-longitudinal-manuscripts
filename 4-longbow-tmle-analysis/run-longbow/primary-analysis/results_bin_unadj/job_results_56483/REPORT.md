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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        exclfeed6    ever_wasted   n_cell       n  outcome_variable 
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       24     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      154     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       46     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       12     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      185     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       13     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0        1     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        1     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      135     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       79     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0        4     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        1     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      175     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       45     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0        5     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      245     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       21     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      196     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     235  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      202     235  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       33     235  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       11      19  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        8      19  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      14  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      14  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        5      14  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        9      14  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0       21      48  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       22      48  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0        3      48  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1        2      48  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0      263     443  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1      158     443  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     443  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1       10     443  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     173  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     173  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      117     173  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     173  ever_wasted      
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      176     687  ever_wasted      
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       25     687  ever_wasted      
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      389     687  ever_wasted      
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       97     687  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0      543    2226  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      280    2226  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      822    2226  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      581    2226  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      176     560  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      241     560  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       66     560  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       77     560  ever_wasted      
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271  ever_wasted      
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271  ever_wasted      
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271  ever_wasted      
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10144   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2041   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2845   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      636   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2742    4722  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      924    4722  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      747    4722  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      309    4722  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       31     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        2     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      183     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       16     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       12     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      190     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        8     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0        2     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        0     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      181     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       32     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0        5     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      202     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       16     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0        5     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      261     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      223     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     235  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      225     235  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       10     235  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       12      17  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      17  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      17  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      17  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0      13  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0      13  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        6      13  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        7      13  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0       36      47  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1        6      47  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0        4      47  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1        1      47  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0      365     437  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       50     437  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0       17     437  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        5     437  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     137  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     137  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      137     137  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     137  ever_wasted      
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      195     683  ever_wasted      
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        6     683  ever_wasted      
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      451     683  ever_wasted      
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       31     683  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0      744    2210  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1       74    2210  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0     1204    2210  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1      188    2210  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      320     544  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       86     544  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      105     544  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       33     544  ever_wasted      
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268  ever_wasted      
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268  ever_wasted      
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268  ever_wasted      
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11236   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      848   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     3180   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      269   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     3517    4593  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       92    4593  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      950    4593  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       34    4593  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       25     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1        8     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      164     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       33     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       12     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      189     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0        1     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        1     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      157     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       58     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0        4     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        1     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      184     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       35     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0        5     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      246     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       18     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      201     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     231  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     231  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      204     231  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       27     231  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       14      19  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      19  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      14  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      14  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          0                      0        9      14  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          0                      1        5      14  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0       25      47  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       17      47  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0        4      47  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1        1      47  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0      273     417  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1      125     417  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     417  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     417  ever_wasted      
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     177  ever_wasted      
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     177  ever_wasted      
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      121     177  ever_wasted      
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     177  ever_wasted      
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      127     615  ever_wasted      
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       21     615  ever_wasted      
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      389     615  ever_wasted      
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       78     615  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0      488    2090  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      233    2090  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      892    2090  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1      477    2090  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      211     557  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      204     557  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       77     557  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       65     557  ever_wasted      
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258  ever_wasted      
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258  ever_wasted      
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258  ever_wasted      
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6569   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1298   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1939   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      396   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2809    4742  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      873    4742  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      765    4742  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      295    4742  ever_wasted      


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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/79aadb96-6f30-4f54-b9eb-6fe7830801bc/97a8ffe6-81f5-4c7a-af66-118dd20f57ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79aadb96-6f30-4f54-b9eb-6fe7830801bc/97a8ffe6-81f5-4c7a-af66-118dd20f57ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/79aadb96-6f30-4f54-b9eb-6fe7830801bc/97a8ffe6-81f5-4c7a-af66-118dd20f57ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/79aadb96-6f30-4f54-b9eb-6fe7830801bc/97a8ffe6-81f5-4c7a-af66-118dd20f57ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2727273   0.1204490   0.4250056
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2300000   0.1715511   0.2884489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3752969   0.3178349   0.4327589
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4545455   0.2817186   0.6273723
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1243781   0.0787222   0.1700340
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1995885   0.1640277   0.2351492
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                0.3402187   0.3078426   0.3725948
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                0.4141126   0.3883326   0.4398926
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5779376   0.5304919   0.6253834
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5384615   0.4566811   0.6202420
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1675010   0.1602646   0.1747374
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1827061   0.1685160   0.1968962
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2520458   0.2352938   0.2687979
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2926136   0.2611403   0.3240870
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0298507   0.0063076   0.0533939
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0643154   0.0423992   0.0862315
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0904645   0.0708030   0.1101261
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1350575   0.1170986   0.1530164
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2118227   0.1720410   0.2516043
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2391304   0.1678975   0.3103633
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0701754   0.0650604   0.0752905
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0779936   0.0680958   0.0878914
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0254918   0.0193457   0.0316379
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0345528   0.0216742   0.0474315
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2424242   0.0958903   0.3889582
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1675127   0.1152522   0.2197732
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1418919   0.0856292   0.1981546
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1670236   0.1331666   0.2008805
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                0.3231623   0.2890165   0.3573081
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                0.3484295   0.3231838   0.3736753
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4915663   0.4434245   0.5397081
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4577465   0.3757287   0.5397642
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1649930   0.1560730   0.1739130
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1695931   0.1529403   0.1862460
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2370994   0.2206147   0.2535841
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2783019   0.2469890   0.3096147


### Parameter: E(Y)


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2360515   0.1814079   0.2906951
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3792325   0.3255512   0.4329138
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       NA                   NA                0.3867925   0.3665564   0.4070285
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5678571   0.5267918   0.6089225
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1708796   0.1645476   0.1772116
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2611182   0.2462845   0.2759518
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1258581   0.0910745   0.1606418
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       NA                   NA                0.1185520   0.1050716   0.1320324
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2187500   0.1839790   0.2535210
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0719114   0.0672720   0.0765508
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0274331   0.0219967   0.0328694
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1782609   0.1286901   0.2278316
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3165468   0.2711185   0.3619751
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba          GAMBIA       NA                   NA                0.3397129   0.3194033   0.3600225
6-24 months                   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1660459   0.1583106   0.1737812
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2463096   0.2316309   0.2609882


### Parameter: RR


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.8433333   0.4566411   1.557484
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2111623   0.7836492   1.871902
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.6046914   1.0670553   2.413216
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    1                 1.2171953   1.0863601   1.363788
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9316949   0.7839614   1.107268
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0907761   0.9964752   1.194001
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1609541   1.0233632   1.317044
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.8863636   0.8915751   3.991103
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 2.1545643   0.9124937   5.087320
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    1                 1.4929326   1.1571399   1.926170
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1289181   0.7938312   1.605450
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1114091   0.9630534   1.282619
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.3554480   0.8600427   2.136219
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6909898   0.3499915   1.364225
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.1730526   0.5767231   2.385985
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1771184   0.7540787   1.837484
6-24 months                   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba          GAMBIA       0                    1                 1.0781875   0.9485351   1.225562
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9311999   0.7592100   1.142152
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0278808   0.9172733   1.151826
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1737773   1.0292632   1.338582


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0366758   -0.1766977   0.1033462
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0039356   -0.0052013   0.0130725
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0532056    0.0121865   0.0942247
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0465737    0.0204468   0.0727007
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0100805   -0.0342659   0.0141049
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0033786   -0.0002257   0.0069828
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0090723    0.0010953   0.0170494
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053762   -0.0018898   0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0243220    0.0015921   0.0470519
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0280875    0.0112909   0.0448841
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0069273   -0.0137939   0.0276486
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0017360   -0.0006932   0.0041651
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0019412   -0.0011807   0.0050631
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0641634   -0.1974596   0.0691328
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0024764   -0.0094430   0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0190837   -0.0307856   0.0689530
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0165506   -0.0112698   0.0443711
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0086219   -0.0328981   0.0156543
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0010529   -0.0033350   0.0054408
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0092102    0.0013256   0.0170948


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1553719   -0.9300888   0.3083820
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0103778   -0.0145675   0.0347097
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2996085    0.0308921   0.4938146
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.1204102    0.0501663   0.1854592
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0177518   -0.0612800   0.0239910
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0197717   -0.0015504   0.0406399
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0347442    0.0036663   0.0648527
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0427163   -0.0166271   0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.4489714   -0.1322414   0.7318305
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.2369212    0.0836987   0.3645220
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0316678   -0.0677783   0.1218522
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0241405   -0.0101778   0.0572929
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0707622   -0.0505636   0.1780766
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.3599409   -1.3519971   0.2136729
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0078232   -0.0309120   0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1185504   -0.2519680   0.3794143
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0487195   -0.0368016   0.1271863
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0178528   -0.0694040   0.0312133
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0063408   -0.0204434   0.0324220
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0373927    0.0048219   0.0688974

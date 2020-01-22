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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        predexfd6    ever_wasted   n_cell       n  outcome_variable 
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       62     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       23     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      116     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       32     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       29     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      168     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     210  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       10     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        1     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      126     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       79     216  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       10     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        2     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      169     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       44     225  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       87     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        5     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      163     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       16     271  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      193     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     237  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      201     235  ever_wasted      
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10160   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2046   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2829   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      631   15666  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2753    4722  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      927    4722  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      736    4722  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      306    4722  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       79     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        6     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      135     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     232  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       29     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      173     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     210  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       11     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        0     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      172     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       32     215  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       12     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      195     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       16     223  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       90     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      176     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     271  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      220     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     236  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      224     235  ever_wasted      
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11256   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      849   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     3160   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      268   15533  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     3530    4593  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       92    4593  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      937    4593  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       34    4593  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       65     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       19     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      124     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       22     230  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       30     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      171     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       10     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        1     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      148     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       58     217  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       10     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        2     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      178     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       34     224  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       87     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        4     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      164     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       14     269  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      198     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     231  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     231  ever_wasted      
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      203     231  ever_wasted      
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6581   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1302   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1927   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      392   10202  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2819    4742  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      876    4742  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      755    4742  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      292    4742  ever_wasted      


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
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/bbcf822a-e377-40bb-abb9-6e1b5d30f6d4/c1eda92e-8334-4f97-a80c-d5264434a0ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bbcf822a-e377-40bb-abb9-6e1b5d30f6d4/c1eda92e-8334-4f97-a80c-d5264434a0ea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bbcf822a-e377-40bb-abb9-6e1b5d30f6d4/c1eda92e-8334-4f97-a80c-d5264434a0ea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bbcf822a-e377-40bb-abb9-6e1b5d30f6d4/c1eda92e-8334-4f97-a80c-d5264434a0ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2705882   0.1759398   0.3652367
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2162162   0.1497511   0.2826813
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    NA                0.0543478   0.0079376   0.1007581
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         0                    NA                0.0893855   0.0475133   0.1312576
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1676225   0.1603965   0.1748484
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1823699   0.1681305   0.1966093
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2519022   0.2352001   0.2686043
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2936660   0.2618522   0.3254799
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0816327   0.0372751   0.1259902
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0298507   0.0063076   0.0533939
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0643154   0.0423992   0.0862315
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0904645   0.0708030   0.1101261
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1350575   0.1170986   0.1530164
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2118227   0.1720410   0.2516043
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2391304   0.1678975   0.3103633
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0701363   0.0650191   0.0752536
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0781797   0.0682347   0.0881247
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0254003   0.0192741   0.0315265
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0350154   0.0219648   0.0480661
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2261905   0.1365284   0.3158526
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1506849   0.0925299   0.2088399
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
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1651655   0.1562413   0.1740898
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1690384   0.1523064   0.1857704
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2370771   0.2206413   0.2535130
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2788921   0.2473000   0.3104841


### Parameter: E(Y)


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2360515   0.1814079   0.2906951
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         NA                   NA                0.0774908   0.0455992   0.1093824
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3792325   0.3255512   0.4329138
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       NA                   NA                0.3867925   0.3665564   0.4070285
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5678571   0.5267918   0.6089225
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1708796   0.1645476   0.1772116
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2611182   0.2462845   0.2759518
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0775862   0.0430879   0.1120845
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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7990599   0.5015824   1.272965
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         0                    1                 1.6446927   0.6209888   4.355979
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0879802   0.9936350   1.191283
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1657939   1.0270216   1.323317
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1564626   0.4495261   2.975146
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.8863636   0.8915751   3.991103
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 2.1545643   0.9124937   5.087320
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    1                 1.4929326   1.1571399   1.926170
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1289181   0.7938312   1.605450
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1146822   0.9654031   1.287044
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.3785430   0.8744958   2.173116
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6661860   0.3831101   1.158424
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
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0234482   0.9125472   1.147827
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1763770   1.0310362   1.342206


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0345367   -0.1080768   0.0390033
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    NA                 0.0231429   -0.0181917   0.0644776
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0039356   -0.0052013   0.0130725
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0532056    0.0121865   0.0942247
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0465737    0.0204468   0.0727007
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0100805   -0.0342659   0.0141049
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0032571   -0.0003334   0.0068477
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0092160    0.0012839   0.0171481
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0069980   -0.0375657   0.0515616
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053762   -0.0018898   0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0243220    0.0015921   0.0470519
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0280875    0.0112909   0.0448841
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0069273   -0.0137939   0.0276486
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0017751   -0.0006523   0.0042026
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0020327   -0.0010799   0.0051454
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0479296   -0.1159323   0.0200731
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0024764   -0.0094430   0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0190837   -0.0307856   0.0689530
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0165506   -0.0112698   0.0443711
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0086219   -0.0328981   0.0156543
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0008803   -0.0035007   0.0052614
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0092324    0.0013983   0.0170666


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1463102   -0.5035934   0.1260756
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    NA                 0.2986542   -0.4737013   0.6662242
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0103778   -0.0145675   0.0347097
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2996085    0.0308921   0.4938146
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.1204102    0.0501663   0.1854592
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0177518   -0.0612800   0.0239910
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0190610   -0.0021776   0.0398494
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0352944    0.0044005   0.0652295
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0901961   -0.7082806   0.5154524
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0427163   -0.0166271   0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.4489714   -0.1322414   0.7318305
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.2369212    0.0836987   0.3645220
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0316678   -0.0677783   0.1218522
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0246846   -0.0096113   0.0578155
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0740974   -0.0468453   0.1810676
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.2688734   -0.7094406   0.0581482
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0078232   -0.0309120   0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1185504   -0.2519680   0.3794143
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0487195   -0.0368016   0.1271863
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0178528   -0.0694040   0.0312133
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0053017   -0.0214394   0.0313428
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0374831    0.0051319   0.0687823

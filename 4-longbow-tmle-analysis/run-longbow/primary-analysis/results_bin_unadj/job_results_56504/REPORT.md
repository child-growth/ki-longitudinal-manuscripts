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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        predfeed6    ever_swasted   n_cell       n  outcome_variable 
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       80     233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      141     233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        7     233  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       29     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      177     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       11     216  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        0     216  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      193     216  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       12     216  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       12     225  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     225  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      210     225  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     225  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       90     271  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        2     271  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      177     271  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        2     271  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     237  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     237  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     237  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     237  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     235  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      226     235  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     235  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0       38      48  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1        5      48  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0        4      48  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        1      48  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      159     173  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     173  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      330     560  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       87     560  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      104     560  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       39     560  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       47     271  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        0     271  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11773   15666  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      433   15666  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3337   15666  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      123   15666  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3533    4722  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      147    4722  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      991    4722  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       51    4722  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       82     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        3     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      143     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        4     232  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       29     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        1     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      178     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       11     215  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     215  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      198     215  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        6     215  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       12     223  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     223  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      210     223  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     223  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       91     271  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        1     271  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      179     271  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        0     271  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     236  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     236  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      230     236  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     236  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     235  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      231     235  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        3     235  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0       42      47  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        0      47  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0        4      47  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        1      47  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      386     544  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       20     544  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      128     544  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       10     544  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11904   15533  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      201   15533  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3369   15533  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       59   15533  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3608    4593  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       14    4593  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      964    4593  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        7    4593  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       82     230  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     230  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      143     230  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     230  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       30     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      176     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       11     217  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        0     217  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      200     217  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        6     217  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       12     224  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     224  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      210     224  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     224  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       90     269  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     269  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      176     269  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        2     269  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     231  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     231  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      225     231  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        5     231  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0       37      47  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1        5      47  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0        5      47  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        0      47  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      156     177  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       21     177  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      341     557  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     557  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       45     258  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        0     258  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258  ever_swasted     
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7632   10202  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      251   10202  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2250   10202  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       69   10202  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3551    4742  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      144    4742  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      998    4742  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       49    4742  ever_swasted     


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/3a5d57e7-e6c5-4a3d-81e4-b78d5aff0764/8d968965-7611-48e9-8e19-1b9f4bb9bab5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a5d57e7-e6c5-4a3d-81e4-b78d5aff0764/8d968965-7611-48e9-8e19-1b9f4bb9bab5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a5d57e7-e6c5-4a3d-81e4-b78d5aff0764/8d968965-7611-48e9-8e19-1b9f4bb9bab5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a5d57e7-e6c5-4a3d-81e4-b78d5aff0764/8d968965-7611-48e9-8e19-1b9f4bb9bab5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0588235    0.0086951   0.1089519
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0472973    0.0130246   0.0815700
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2086331    0.1695986   0.2476676
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2727273    0.1996670   0.3457875
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0354744    0.0318365   0.0391122
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0355491    0.0281468   0.0429514
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0399457    0.0330080   0.0468833
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0489443    0.0356151   0.0622735
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0492611    0.0281910   0.0703312
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0724638    0.0291691   0.1157584
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0166047    0.0139844   0.0192250
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0172112    0.0116864   0.0227360
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0038653    0.0005928   0.0071378
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0072091   -0.0003364   0.0147545
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1783133    0.1414529   0.2151736
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2394366    0.1691849   0.3096884
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0318407    0.0273535   0.0363278
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0297542    0.0220830   0.0374254
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0389716    0.0322620   0.0456812
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0468004    0.0341554   0.0594453


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0515021   0.0230618   0.0799425
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2250000   0.1903834   0.2596166
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0354909   0.0322227   0.0387591
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0419314   0.0358274   0.0480353
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0551471   0.0359475   0.0743466
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0167386   0.0143298   0.0191473
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045722   0.0015532   0.0075911
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1938959   0.1610341   0.2267576
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0313664   0.0274269   0.0353059
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0407001   0.0348212   0.0465791


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8040541   0.2627110   2.460890
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3072100   0.9428389   1.812397
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0021079   0.7943289   1.264237
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2252732   0.8847081   1.696938
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4710145   0.7055093   3.067123
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0365254   0.7278383   1.476131
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8650875   0.4808975   7.233457
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3427864   0.9378500   1.922563
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9344717   0.6997738   1.247885
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2008848   0.8694880   1.658590


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0073214   -0.0458998   0.0312570
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0163669   -0.0049119   0.0376457
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0000165   -0.0018071   0.0018402
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0019857   -0.0013590   0.0053305
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0058860   -0.0063579   0.0181299
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001338   -0.0012005   0.0014682
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007069   -0.0010429   0.0024567
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0155826   -0.0047636   0.0359288
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004743   -0.0024616   0.0015131
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0017285   -0.0014588   0.0049159


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1421569   -1.1936993   0.4053322
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0727418   -0.0264827   0.1623748
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004653   -0.0522590   0.0505478
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0473567   -0.0361113   0.1241007
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1067323   -0.1417290   0.3011239
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0079964   -0.0748796   0.0844824
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1546107   -0.3285313   0.4620503
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0803659   -0.0302351   0.1790934
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0151204   -0.0804440   0.0462538
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0424702   -0.0394466   0.1179313

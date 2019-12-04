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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        predexfd6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       80     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      141     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        7     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       29     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      177     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       11     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        0     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      193     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       12     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       12     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      210     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       90     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        2     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      177     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        2     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      226     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     235
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       15      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        4      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        9      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        5      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0       38      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1        5      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0        4      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        1      48
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      368     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       1       53     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       0       20     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        2     443
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      197     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1        4     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      471     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       15     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      722    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      101    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0     1159    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      244    2226
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      330     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       87     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      104     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       39     560
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       47     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        0     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11773   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      433   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3337   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      123   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3533    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      147    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      991    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       51    4722
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       82     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        3     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      143     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        4     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       29     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        1     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      178     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       11     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      198     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        6     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       12     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      210     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       91     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        1     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      179     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        0     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      230     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      231     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        3     235
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       14      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        9      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        4      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0       42      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        0      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0        4      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        1      47
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      400     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       15     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       0       21     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     437
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      200     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      477     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1        5     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      793    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       25    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1326    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1       66    2210
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      386     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       20     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      128     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       10     544
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11904   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      201   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3369   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       59   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3608    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       14    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      964    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        7    4593
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       82     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      143     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     230
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       30     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      176     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       11     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        0     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      200     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        6     217
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       12     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      210     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     224
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       90     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      176     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        2     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     235
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      225     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        5     231
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       17      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0      14
6-24 months                   ki1000108-IRC              INDIA                          0                       0       13      14
6-24 months                   ki1000108-IRC              INDIA                          0                       1        1      14
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0       37      47
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1        5      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0        5      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        0      47
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       0      359     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       1       39     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       0       18     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     417
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       21     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      145     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1        3     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      457     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       10     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      642    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1       79    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0     1186    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      183    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      341     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       45     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        0     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7632   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      251   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2250   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       69   10202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3551    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      144    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      998    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       49    4742


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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/53267b7f-b513-4427-9578-fcfdbf07acea/18a8a8c5-395d-4e8a-8f4d-ddd5883fe1f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53267b7f-b513-4427-9578-fcfdbf07acea/18a8a8c5-395d-4e8a-8f4d-ddd5883fe1f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53267b7f-b513-4427-9578-fcfdbf07acea/18a8a8c5-395d-4e8a-8f4d-ddd5883fe1f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53267b7f-b513-4427-9578-fcfdbf07acea/18a8a8c5-395d-4e8a-8f4d-ddd5883fe1f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0588235    0.0086951   0.1089519
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0472973    0.0130246   0.0815700
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1222569    0.0995766   0.1449373
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1761309    0.1562394   0.1960224
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2094167    0.1703765   0.2484570
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2703045    0.1964889   0.3441201
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0354721    0.0318362   0.0391081
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0355958    0.0282171   0.0429745
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0409297    0.0339102   0.0479492
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0461243    0.0324244   0.0598242
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0306793    0.0188927   0.0424658
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0473057    0.0361229   0.0584886
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0493669    0.0282787   0.0704551
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0741847    0.0304880   0.1178814
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0165883    0.0139679   0.0192088
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0172404    0.0116986   0.0227821
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0038653    0.0005928   0.0071378
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0072091   -0.0003364   0.0147545
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1093747    0.0865497   0.1321997
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1339487    0.1159489   0.1519486
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1793459    0.1424585   0.2162333
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2388613    0.1681075   0.3096151
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0318573    0.0273686   0.0363460
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0296625    0.0220073   0.0373177
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0403893    0.0335362   0.0472425
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0437860    0.0303654   0.0572065


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0515021   0.0230618   0.0799425
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1549865   0.1399495   0.1700235
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2250000   0.1903834   0.2596166
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0354909   0.0322227   0.0387591
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0419314   0.0358274   0.0480353
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0411765   0.0328905   0.0494625
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0551471   0.0359475   0.0743466
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0167386   0.0143298   0.0191473
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045722   0.0015532   0.0075911
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1253589   0.1111594   0.1395583
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1938959   0.1610341   0.2267576
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0313664   0.0274269   0.0353059
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0407001   0.0348212   0.0465791


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8040541   0.2627110   2.460890
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.4406618   1.1605368   1.788402
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2907491   0.9272910   1.796667
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0034867   0.7964071   1.264411
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1269156   0.7973821   1.592635
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.5419453   0.9820824   2.420973
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5027210   0.7254645   3.112723
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0393071   0.7295210   1.480642
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8650875   0.4808975   7.233457
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2246777   0.9563150   1.568349
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3318470   0.9289879   1.909408
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9311051   0.6970343   1.243779
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0840974   0.7619584   1.542429


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0073214   -0.0458998   0.0312570
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0327296    0.0136446   0.0518146
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0155833   -0.0057338   0.0369003
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0000188   -0.0017971   0.0018346
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0010017   -0.0024444   0.0044478
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0104972    0.0002686   0.0207258
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0057801   -0.0064841   0.0180443
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001502   -0.0011839   0.0014844
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007069   -0.0010429   0.0024567
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0159842   -0.0030371   0.0350054
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0145500   -0.0057525   0.0348524
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004909   -0.0024740   0.0014921
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0003108   -0.0029872   0.0036088


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1421569   -1.1936993   0.4053322
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2111769    0.0790866   0.3243210
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0692589   -0.0301085   0.1590410
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0005283   -0.0519642   0.0504015
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0238889   -0.0619465   0.1027864
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2549321   -0.0327302   0.4624674
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1048129   -0.1440773   0.2995579
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0089756   -0.0738771   0.0854361
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1546107   -0.3285313   0.4620503
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1275072   -0.0376870   0.2664034
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0750402   -0.0352858   0.1736091
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0156516   -0.0808215   0.0455887
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0076363   -0.0768496   0.0854938

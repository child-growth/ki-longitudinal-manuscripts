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

agecat                        studyid                    country                        predexfd6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       62     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       23     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      116     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       32     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       29     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      168     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       10     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        1     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      126     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       79     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       10     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        2     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      169     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       44     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       87     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        5     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      163     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       16     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      193     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      201     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       33     235
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       11      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        8      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        5      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        9      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0       21      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       22      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0        3      48
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1        2      48
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0      263     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1      158     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1       10     443
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      176     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       25     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      389     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       97     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0      543    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      280    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      822    2226
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      581    2226
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      176     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      241     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       66     560
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       77     560
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10160   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2046   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2829   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      631   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2753    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      927    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      736    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      306    4722
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       79     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      135     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       29     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      173     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       11     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        0     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      172     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       32     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       12     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      195     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       16     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       90     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      176     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      220     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      224     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       10     235
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       12      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        6      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        7      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0       36      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1        6      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0        4      47
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1        1      47
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0      365     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       50     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0       17     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        5     437
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      195     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        6     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      451     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       31     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0      744    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1       74    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0     1204    2210
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1      188    2210
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      320     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       86     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      105     544
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       33     544
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11256   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      849   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     3160   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      268   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     3530    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       92    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      937    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       34    4593
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       65     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       19     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      124     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       22     230
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       30     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      171     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       10     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        1     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      148     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       58     217
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       10     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        2     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      178     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       34     224
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       87     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        4     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      164     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       14     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      198     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     235
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      203     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       27     231
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       14      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      19
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      14
6-24 months                   ki1000108-IRC              INDIA                          0                      0        9      14
6-24 months                   ki1000108-IRC              INDIA                          0                      1        5      14
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0       25      47
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       17      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0        4      47
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1        1      47
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0      273     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1      125     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     417
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      127     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       21     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      389     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       78     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0      488    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      233    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      892    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1      477    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      211     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      204     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       77     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       65     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6581   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1302   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1927   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      392   10202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2819    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      876    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      755    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      292    4742


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




# Results Detail

## Results Plots
![](/tmp/0f2363a9-6b86-4bbb-9632-ec668fe594da/c597e222-ea77-448a-bab9-4f7edc06be0d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f2363a9-6b86-4bbb-9632-ec668fe594da/c597e222-ea77-448a-bab9-4f7edc06be0d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f2363a9-6b86-4bbb-9632-ec668fe594da/c597e222-ea77-448a-bab9-4f7edc06be0d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f2363a9-6b86-4bbb-9632-ec668fe594da/c597e222-ea77-448a-bab9-4f7edc06be0d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2704997   0.1730834   0.3679160
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2156063   0.1488951   0.2823175
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    NA                0.0543478   0.0079376   0.1007581
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         0                    NA                0.0893855   0.0475133   0.1312576
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3749192   0.3179202   0.4319182
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4616077   0.3160034   0.6072119
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1432151   0.0910832   0.1953470
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2007523   0.1618366   0.2396681
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                0.3441186   0.3117589   0.3764783
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                0.4144119   0.3887480   0.4400759
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5811104   0.5339342   0.6282866
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5262718   0.4441142   0.6084294
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1685434   0.1613704   0.1757163
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1790238   0.1647860   0.1932617
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2546929   0.2379550   0.2714307
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2840611   0.2532576   0.3148646
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0816327   0.0372751   0.1259902
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0298507   0.0063076   0.0533939
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0643154   0.0423992   0.0862315
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0871592   0.0676905   0.1066278
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1369892   0.1188637   0.1551148
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2120024   0.1721652   0.2518396
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2344800   0.1625866   0.3063734
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0701601   0.0650381   0.0752821
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0782158   0.0683964   0.0880351
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0251358   0.0190504   0.0312212
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0361123   0.0228522   0.0493725
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2151206   0.1260215   0.3042198
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1537620   0.0944939   0.2130301
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1402803   0.0837041   0.1968565
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1667188   0.1328402   0.2005974
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                0.3257554   0.2915923   0.3599184
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                0.3497178   0.3245070   0.3749286
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4931576   0.4452511   0.5410641
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4521308   0.3700477   0.5342139
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1655462   0.1566506   0.1744419
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1682133   0.1515493   0.1848773
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2395138   0.2230838   0.2559437
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2680927   0.2371688   0.2990166


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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7970669   0.4971299   1.277967
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         0                    1                 1.6446927   0.6209888   4.355979
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2312191   0.8795361   1.723523
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.4017543   0.9276525   2.118158
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    1                 1.2042706   1.0769000   1.346706
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9056313   0.7604359   1.078550
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0621826   0.9696145   1.163588
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1153085   0.9834582   1.264836
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1564626   0.4495261   2.975146
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.8863636   0.8915751   3.991103
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 2.1545643   0.9124937   5.087320
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    1                 1.5717137   1.2134629   2.035731
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1060253   0.7718090   1.584967
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1148179   0.9671192   1.285073
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.4366878   0.9149332   2.255981
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7147710   0.4062304   1.257655
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.1730526   0.5767231   2.385985
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1884690   0.7563416   1.867488
6-24 months                   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba          GAMBIA       0                    1                 1.0735596   0.9458563   1.218505
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9168079   0.7473728   1.124655
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0161107   0.9063319   1.139186
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1193206   0.9809323   1.277232


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0344482   -0.1112184   0.0423221
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    NA                 0.0231429   -0.0181917   0.0644776
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0043133   -0.0046855   0.0133121
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0343686   -0.0120560   0.0807932
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0426738    0.0166055   0.0687421
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0132533   -0.0371384   0.0106318
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0023362   -0.0012232   0.0058957
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0064253   -0.0014021   0.0142528
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0069980   -0.0375657   0.0515616
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053762   -0.0018898   0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0243220    0.0015921   0.0470519
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0313929    0.0146763   0.0481094
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0067476   -0.0140078   0.0275030
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0017513   -0.0006519   0.0041545
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0022972   -0.0007970   0.0053914
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0368598   -0.1046397   0.0309202
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0024764   -0.0094430   0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0206953   -0.0294657   0.0708563
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0139576   -0.0138879   0.0418030
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0102132   -0.0341136   0.0136872
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0004996   -0.0038473   0.0048466
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0067958   -0.0009581   0.0145497


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1459349   -0.5210725   0.1366836
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU         1                    NA                 0.2986542   -0.4737013   0.6662242
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0113737   -0.0131809   0.0353333
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1935348   -0.1136576   0.4159909
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.1103275    0.0402936   0.1752507
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0233391   -0.0663405   0.0179282
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0136719   -0.0073708   0.0342751
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0246069   -0.0058616   0.0541525
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0901961   -0.7082806   0.5154524
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0427163   -0.0166271   0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.4489714   -0.1322414   0.7318305
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.2648025    0.1121382   0.3912168
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0308461   -0.0687775   0.1211835
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0243536   -0.0096047   0.0571697
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0837389   -0.0365000   0.1900296
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.2067744   -0.6492649   0.1169979
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0078232   -0.0309120   0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1285616   -0.2454472   0.3902553
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0410863   -0.0444775   0.1196407
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0211478   -0.0718921   0.0271941
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0030090   -0.0235182   0.0288486
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0275905   -0.0044071   0.0585688

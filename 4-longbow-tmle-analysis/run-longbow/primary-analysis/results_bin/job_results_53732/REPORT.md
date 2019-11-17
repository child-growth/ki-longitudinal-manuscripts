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

agecat                        studyid                    country                        exclfeed6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       24     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0      154     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       46     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       12     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      185     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       13     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0        1     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        1     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      135     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       79     216
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0        4     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        1     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      175     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       45     225
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0        5     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      245     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       21     271
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      196     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      202     235
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10144   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2041   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2845   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      636   15666
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2742    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      924    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      747    4722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      309    4722
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0       31     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        2     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      183     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1       16     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       12     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      190     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        8     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0        2     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        0     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      181     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       32     215
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0        5     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      202     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       16     223
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0        5     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      261     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     271
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      223     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      225     235
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11236   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      848   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     3180   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      269   15533
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     3517    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       92    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      950    4593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       34    4593
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       25     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1        8     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0      164     230
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       33     230
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       12     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      189     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0        1     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        1     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      157     217
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       58     217
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0        4     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        1     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      184     224
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       35     224
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0        5     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      246     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       18     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      201     235
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     235
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     231
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      204     231
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6569   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1298   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1939   10202
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      396   10202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     2809    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      873    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      765    4742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      295    4742


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
![](/tmp/4fcdcbac-76f6-4dd9-ba4b-aa4449de895f/d1959b0b-d879-40d7-86a5-6935931998d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4fcdcbac-76f6-4dd9-ba4b-aa4449de895f/d1959b0b-d879-40d7-86a5-6935931998d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4fcdcbac-76f6-4dd9-ba4b-aa4449de895f/d1959b0b-d879-40d7-86a5-6935931998d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4fcdcbac-76f6-4dd9-ba4b-aa4449de895f/d1959b0b-d879-40d7-86a5-6935931998d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2727273   0.1204490   0.4250056
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2300000   0.1715511   0.2884489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3749192   0.3179202   0.4319182
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4616077   0.3160034   0.6072119
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1410714   0.0891458   0.1929971
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2005918   0.1621246   0.2390589
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                0.3428472   0.3103600   0.3753344
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    NA                0.4151559   0.3894920   0.4408198
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5816410   0.5344970   0.6287851
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5354100   0.4539941   0.6168259
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1682948   0.1611144   0.1754753
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1798370   0.1656299   0.1940441
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2536653   0.2367988   0.2705317
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2837345   0.2532422   0.3142267
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0298507   0.0063076   0.0533939
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0643154   0.0423992   0.0862315
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                0.0876873   0.0680577   0.1073169
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    NA                0.1365813   0.1185324   0.1546302
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2091756   0.1693478   0.2490035
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2201937   0.1488923   0.2914952
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0700913   0.0649813   0.0752014
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0778065   0.0679497   0.0876633
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0252583   0.0191762   0.0313404
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0353642   0.0225074   0.0482210
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2424242   0.0958903   0.3889582
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1675127   0.1152522   0.2197732
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1365488   0.0799356   0.1931621
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1663754   0.1324919   0.2002590
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                0.3258089   0.2916206   0.3599971
6-24 months                   ki1101329-Keneba          GAMBIA       0                    NA                0.3484232   0.3232492   0.3735973
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4947601   0.4468955   0.5426247
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4597678   0.3775589   0.5419768
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1651415   0.1562294   0.1740536
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1694594   0.1528345   0.1860843
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2395736   0.2230079   0.2561392
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2683158   0.2370270   0.2996047


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
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2312191   0.8795361   1.723523
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.4219162   0.9386681   2.153952
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       0                    1                 1.2109065   1.0822943   1.354802
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9205162   0.7758943   1.092095
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0685832   0.9758124   1.170174
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1185389   0.9870154   1.267588
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.8863636   0.8915751   3.991103
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 2.1545643   0.9124937   5.087320
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       0                    1                 1.5575947   1.2017787   2.018759
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0526738   0.7232239   1.532198
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1100729   0.9624636   1.280321
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.4001046   0.8971480   2.185027
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6909898   0.3499915   1.364225
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.1730526   0.5767231   2.385985
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.2184319   0.7675080   1.934281
6-24 months                   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba          GAMBIA       0                    1                 1.0694100   0.9420780   1.213952
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9292743   0.7591899   1.137463
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5          MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0261466   0.9159301   1.149626
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1199727   0.9797480   1.280267


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0366758   -0.1766977   0.1033462
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0043133   -0.0046855   0.0133121
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0365123   -0.0097308   0.0827553
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0439452    0.0177524   0.0701380
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0137839   -0.0376749   0.0101071
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0025848   -0.0009966   0.0061662
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0074529   -0.0004830   0.0153888
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053762   -0.0018898   0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0243220    0.0015921   0.0470519
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0308647    0.0140252   0.0477043
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0095744   -0.0115171   0.0306658
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0018201   -0.0005946   0.0042348
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0021748   -0.0009090   0.0052585
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0641634   -0.1974596   0.0691328
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0024764   -0.0094430   0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0244268   -0.0258164   0.0746700
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0139041   -0.0139204   0.0417286
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0118158   -0.0358264   0.0121949
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0009044   -0.0034685   0.0052773
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0067360   -0.0011129   0.0145849


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1553719   -0.9300888   0.3083820
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0113737   -0.0131809   0.0353333
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2056060   -0.1009492   0.4268020
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA       1                    NA                 0.1136145    0.0432040   0.1788435
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0242735   -0.0672921   0.0170112
0-24 months (no birth wast)   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0151265   -0.0060473   0.0358545
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0285423   -0.0023851   0.0585155
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0427163   -0.0166271   0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.4489714   -0.1322414   0.7318305
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA       1                    NA                 0.2603475    0.1063444   0.3878114
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0437685   -0.0576009   0.1354218
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0253099   -0.0088016   0.0582679
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0792758   -0.0404285   0.1852077
6-24 months                   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.3599409   -1.3519971   0.2136729
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0078232   -0.0309120   0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1517422   -0.2250486   0.4126426
6-24 months                   ki1101329-Keneba          GAMBIA       1                    NA                 0.0409289   -0.0445739   0.1194329
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0244661   -0.0754681   0.0241173
6-24 months                   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0054465   -0.0212438   0.0314392
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0273477   -0.0050698   0.0587196

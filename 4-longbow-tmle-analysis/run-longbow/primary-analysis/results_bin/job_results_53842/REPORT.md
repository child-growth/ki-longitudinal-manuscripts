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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        exclfeed6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       26     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        7     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      170     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       30     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      196     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        2     219
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      170     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       47     219
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      201     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       19     225
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0        5     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      255     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1       11     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      217     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     237
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      212     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     235
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       15      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        4      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
0-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
0-24 months   ki1000108-IRC              INDIA                          0                  0       12      14
0-24 months   ki1000108-IRC              INDIA                          0                  1        2      14
0-24 months   ki1000109-EE               PAKISTAN                       1                  0       20      48
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       23      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      48
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      318     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      104     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     444
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      192     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      418     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       72     700
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      719    2235
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1      107    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1145    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1      264    2235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      141     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       93     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       52     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11264   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1116   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3182   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      340   15902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3141    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      548    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      847    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      217    4753
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       32     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      192     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       11     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      198     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0        2     219
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      201     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     219
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        5     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      214     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     225
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0        5     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      265     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      234     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     237
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      231     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     235
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       17      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-6 months    ki1000108-IRC              INDIA                          1                  0        0      14
0-6 months    ki1000108-IRC              INDIA                          1                  1        0      14
0-6 months    ki1000108-IRC              INDIA                          0                  0       12      14
0-6 months    ki1000108-IRC              INDIA                          0                  1        2      14
0-6 months    ki1000109-EE               PAKISTAN                       1                  0       35      48
0-6 months    ki1000109-EE               PAKISTAN                       1                  1        8      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      394     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       28     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       20     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        2     444
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      208     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      462     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       28     700
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      808    2235
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1       18    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0     1358    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       51    2235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       21     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      133     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       12     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11839   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      518   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3371   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      145   15873
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3594    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      986    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       45    4703
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       26     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        7     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      170     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       26     229
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       12     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      193     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        2     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      173     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       42     217
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      204     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       15     224
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0        5     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      253     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1       11     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      217     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       18     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      210     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     231
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       16      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6-24 months   ki1000108-IRC              INDIA                          1                  0        0      14
6-24 months   ki1000108-IRC              INDIA                          1                  1        0      14
6-24 months   ki1000108-IRC              INDIA                          0                  0       13      14
6-24 months   ki1000108-IRC              INDIA                          0                  1        1      14
6-24 months   ki1000109-EE               PAKISTAN                       1                  0       23      47
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       19      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      47
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      298     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      100     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     417
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      131     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       17     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      408     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       58     614
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      624    2090
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       97    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0     1124    2090
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1      245    2090
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      278     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      137     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       94     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7177   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      685   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2116   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      214   10192
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3183    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      499    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      862    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      197    4741


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/3d0950b6-b659-4c70-acfb-55ced7fa00cc/05932ab8-cfdb-4e61-af93-eced92a52223/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d0950b6-b659-4c70-acfb-55ced7fa00cc/05932ab8-cfdb-4e61-af93-eced92a52223/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d0950b6-b659-4c70-acfb-55ced7fa00cc/05932ab8-cfdb-4e61-af93-eced92a52223/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d0950b6-b659-4c70-acfb-55ced7fa00cc/05932ab8-cfdb-4e61-af93-eced92a52223/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2121212   0.0723406   0.3519018
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1500000   0.1004068   0.1995932
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0851555   0.0463152   0.1239957
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1485808   0.1168580   0.1803035
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1317731   0.1092677   0.1542784
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1831700   0.1633058   0.2030341
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3380131   0.2935756   0.3824506
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3419895   0.2658495   0.4181295
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0906360   0.0852086   0.0960633
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0945767   0.0849143   0.1042392
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1517821   0.1386771   0.1648870
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1870121   0.1634023   0.2106219
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0217680   0.0118336   0.0317024
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0358198   0.0261325   0.0455071
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0492517   0.0284008   0.0701026
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0816092   0.0361328   0.1270857
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0419719   0.0382119   0.0457320
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0411969   0.0350270   0.0473669
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0212322   0.0153071   0.0271573
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0447132   0.0312724   0.0581539
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2121212   0.0723354   0.3519071
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1326531   0.0850620   0.1802441
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1096802   0.0581561   0.1612043
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1235636   0.0935666   0.1535606
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1321761   0.1080565   0.1562957
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.1762787   0.1563099   0.1962476
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3353010   0.2904522   0.3801498
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.3351858   0.2579643   0.4124073
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0871046   0.0804658   0.0937434
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0919939   0.0796973   0.1042904
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1384424   0.1261130   0.1507719
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1702165   0.1477438   0.1926893


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1587983   0.1117681   0.2058285
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1659955   0.1505665   0.1814246
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3415929   0.3024539   0.3807320
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0915608   0.0867079   0.0964137
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1609510   0.1491579   0.1727440
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0308725   0.0236998   0.0380452
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0584071   0.0390530   0.0777612
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0417690   0.0384207   0.0451174
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0261535   0.0207066   0.0316005
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1441048   0.0985189   0.1896907
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1636364   0.1477722   0.1795005
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3321364   0.2929882   0.3712847
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0882064   0.0821266   0.0942862
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1468045   0.1358635   0.1577455


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7071429   0.3383148   1.478064
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.7448181   1.0541333   2.888050
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.3900409   1.1392766   1.696001
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0117641   0.7860047   1.302367
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0434790   0.9301057   1.170672
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2321090   1.0623331   1.429018
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.6455229   0.9681304   2.796881
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.6569838   0.8224800   3.338191
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9815350   0.8307666   1.159665
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.1059164   1.4048841   3.156761
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.6253644   0.2953068   1.324320
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1265805   0.6640835   1.911181
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.3336655   1.0790008   1.648436
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.9996564   0.7673746   1.302249
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0561307   0.9115876   1.223593
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2295112   1.0497253   1.440089


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0533229   -0.1806646   0.0740188
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0434160    0.0079961   0.0788359
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0342225    0.0154225   0.0530225
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0035798   -0.0183511   0.0255107
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0009248   -0.0014610   0.0033107
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0091689    0.0030407   0.0152971
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0091045    0.0003140   0.0178949
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0091554   -0.0036364   0.0219472
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0002029   -0.0017370   0.0013312
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0049213    0.0018648   0.0079779
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0680164   -0.1944542   0.0584214
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0124696   -0.0328902   0.0578295
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0314602    0.0111081   0.0518124
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0031646   -0.0259744   0.0196452
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0011018   -0.0019629   0.0041665
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0083620    0.0024110   0.0143131


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.3357903   -1.4291848   0.2654590
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627   0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.3376798    0.0047524   0.5592373
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.2061650    0.0858063   0.3106778
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0104798   -0.0558342   0.0726287
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0101008   -0.0163135   0.0358286
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0569670    0.0180217   0.0943677
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.2949056   -0.0437161   0.5236653
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1567516   -0.0871969   0.3459622
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0048576   -0.0422445   0.0311881
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1881716    0.0602066   0.2987124
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.4719927   -1.6599630   0.1854164
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691   0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1020848   -0.3577406   0.4061814
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1922570    0.0590042   0.3066402
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0095280   -0.0806314   0.0568970
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0124912   -0.0228279   0.0465908
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0569604    0.0154132   0.0967543

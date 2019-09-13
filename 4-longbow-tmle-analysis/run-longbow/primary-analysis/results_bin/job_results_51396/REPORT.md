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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
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

agecat                        studyid                    country                        exclfeed3    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      138     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       55     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       80     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        4     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      132     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        8     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       93     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       51     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       54     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       37     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       68     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1       17     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      121     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       28     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       66     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      201     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       15     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       31     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      200     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       61     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      158     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       22     249
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        4      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        6      10
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      199     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1      151     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0       12     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1       14     376
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0      263     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1      158     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1       10     443
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      407     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       86     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      158     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       36     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0     1092    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      704    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      116    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      104    2016
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      159     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      225     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       45     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       37     466
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    18881   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     3869   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2170   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      520   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      110     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       38     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       13     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        3     164
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      169     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       61     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        6     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       81     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      136     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        4     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0      128     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1       16     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       69     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       21     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       79     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      138     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1        9     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       70     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      211     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       33     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      229     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       11     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       65     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      176     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        4     249
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        3       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        6       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      285     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       62     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0       15     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       10     372
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0      365     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       50     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0       17     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        5     437
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      472     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       21     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      175     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       15     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0     1562    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1      229    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0      168    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1       48    2007
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      315     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       56     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0       61     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       16     448
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    21003   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1588   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2386   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      262   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      144     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       14     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        1     162
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      135     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       59     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1        6     236
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       79     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      122     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        4     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0      100     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1       41     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       69     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       23     233
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       72     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1       13     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      124     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       23     232
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       62     268
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        4     268
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      190     268
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     268
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       30     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      187     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     253
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       59     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        6     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      154     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       20     239
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        6      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      10
6-24 months                   ki1000108-IRC              INDIA                          0                      0        7      10
6-24 months                   ki1000108-IRC              INDIA                          0                      1        3      10
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      234     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1      114     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0       16     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1       10     374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0      273     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1      125     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     417
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      363     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       72     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      153     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       27     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0     1118    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      582    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      136    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1       74    1910
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      188     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      199     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       48     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       33     468
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    12710   16722
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2474   16722
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1255   16722
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      283   16722
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      114     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       35     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       14     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        2     165


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
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/b2b8df50-dbfe-44d1-86ed-52d9af5318c6/af01351b-1324-46c5-ad6a-218d43f591f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b2b8df50-dbfe-44d1-86ed-52d9af5318c6/af01351b-1324-46c5-ad6a-218d43f591f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b2b8df50-dbfe-44d1-86ed-52d9af5318c6/af01351b-1324-46c5-ad6a-218d43f591f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2b8df50-dbfe-44d1-86ed-52d9af5318c6/af01351b-1324-46c5-ad6a-218d43f591f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2350298   0.1729399   0.2971197
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1703712   0.0785850   0.2621575
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3518841   0.2740973   0.4296709
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4225674   0.3208996   0.5242351
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2032106   0.1160756   0.2903455
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1863328   0.1234960   0.2491696
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1159420   0.0402486   0.1916355
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1222222   0.0742761   0.1701683
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    NA                0.4319902   0.3799882   0.4839923
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                0.5309964   0.3226587   0.7393342
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3757309   0.3177201   0.4337417
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5403211   0.3689051   0.7117371
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1727236   0.1392214   0.2062259
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1905065   0.1369094   0.2441036
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                0.3922250   0.3696910   0.4147591
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                0.4709717   0.4071037   0.5348396
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5855017   0.5361086   0.6348947
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4430965   0.3339396   0.5522534
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1695844   0.1639404   0.1752284
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1989474   0.1830436   0.2148511
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.0611111   0.0260472   0.0961750
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0895522   0.0210417   0.1580628
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1085632   0.0577915   0.1593350
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2358184   0.1459048   0.3257319
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0612245   0.0223852   0.1000637
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    NA                0.1806273   0.1398925   0.2213620
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                0.4116698   0.1835973   0.6397423
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0433850   0.0253484   0.0614216
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0763697   0.0387332   0.1140062
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                0.1282124   0.1127456   0.1436791
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2079064   0.1530448   0.2627680
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1507029   0.1143214   0.1870844
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2244936   0.1320314   0.3169557
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.0704355   0.0665441   0.0743269
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1034458   0.0909127   0.1159789
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2105263   0.1492921   0.2717605
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0923077   0.0217894   0.1628260
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                0.2859567   0.2107731   0.3611403
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2546236   0.1654722   0.3437751
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1542678   0.0761991   0.2323366
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1551695   0.0962678   0.2140712
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0923077   0.0217913   0.1628241
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1149425   0.0674517   0.1624334
6-24 months                   ki1000109-EE              PAKISTAN                       1                    NA                0.3261559   0.2767492   0.3755626
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                0.3987969   0.1958775   0.6017163
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1635619   0.1286355   0.1984883
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1533241   0.1013107   0.2053376
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                0.3424165   0.3198949   0.3649380
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                0.3497581   0.2855647   0.4139515
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5131029   0.4631929   0.5630129
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.3873029   0.2782861   0.4963196
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1641431   0.1576637   0.1706225
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1686267   0.1484449   0.1888086


### Parameter: E(Y)


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2217742   0.1699649   0.2735835
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.3744681   0.3124566   0.4364796
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1923077   0.1417029   0.2429125
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       NA                   NA                0.4388298   0.3886039   0.4890557
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3792325   0.3255512   0.4329138
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         NA                   NA                0.4007937   0.3793963   0.4221910
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5622318   0.5171396   0.6073240
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1725236   0.1670497   0.1779975
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.0688259   0.0371906   0.1004612
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1581197   0.1112720   0.2049674
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0646552   0.0329427   0.0963676
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       NA                   NA                0.1935484   0.1533466   0.2337501
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1258581   0.0910745   0.1606418
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1380169   0.1229232   0.1531107
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1607143   0.1266675   0.1947611
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.0732993   0.0695038   0.0770947
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1779661   0.1290640   0.2268682
6-24 months                   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2746781   0.2172425   0.3321138
6-24 months                   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1551724   0.1084814   0.2018634
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1087866   0.0692283   0.1483450
6-24 months                   ki1000109-EE              PAKISTAN                       NA                   NA                0.3315508   0.2837756   0.3793260
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3165468   0.2711185   0.3619751
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3434555   0.3221539   0.3647571
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4957265   0.4503800   0.5410730
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1648726   0.1585930   0.1711523


### Parameter: RR


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.7248920   0.3992859   1.3160201
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1                 1.2008710   0.8665872   1.6641040
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9169445   0.5315732   1.5816959
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0541667   0.4921861   2.2578195
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    1                 1.2291862   0.8157803   1.8520903
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.4380533   1.0053936   2.0569033
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.1029555   0.7855615   1.5485875
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    1                 1.2007689   1.0375050   1.3897245
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.7567810   0.5834635   0.9815824
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.1731467   1.0792706   1.2751882
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.4654003   0.5631763   3.8130119
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1                 2.1721757   1.1857952   3.9790575
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8673469   0.3190701   2.3577600
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    1                 2.2791120   1.2537642   4.1430051
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.8863636   0.8915751   3.9911028
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.7602790   0.9244025   3.3519839
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    1                 1.6215781   1.2143540   2.1653615
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.4896431   0.9225539   2.4053193
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.4686598   1.2913198   1.6703544
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.4384616   0.1936062   0.9929874
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    1                 0.8904271   0.5762814   1.3758217
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    1                 1.0058447   0.5343692   1.8933046
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2452106   0.5224651   2.9677571
6-24 months                   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN                       0                    1                 1.2227186   0.7186873   2.0802384
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.1730526   0.5767231   2.3859846
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.9374074   0.6297345   1.3954018
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    1                 1.0214406   0.8410872   1.2404669
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.7548250   0.5606066   1.0163289
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0273154   0.9078037   1.1625608


### Parameter: PAR


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0132556   -0.0431675    0.0166563
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0225840   -0.0267177    0.0718858
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0109029   -0.0799688    0.0581631
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0045399   -0.0602328    0.0693126
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    NA                 0.0068395   -0.0070984    0.0207775
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0035016   -0.0057722    0.0127754
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0048601   -0.0129626    0.0226827
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0085686    0.0011954    0.0159418
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0232699   -0.0444689   -0.0020710
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0029392    0.0012108    0.0046676
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0077148   -0.0132213    0.0286509
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0495564    0.0098408    0.0892720
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0059331   -0.0483768    0.0365106
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    NA                 0.0129211   -0.0014708    0.0273130
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0053762   -0.0018898    0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0093236   -0.0025689    0.0212161
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0098046    0.0035891    0.0160201
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0100114   -0.0069162    0.0269389
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0028638    0.0015583    0.0041692
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0325602   -0.0591546   -0.0059658
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0112786   -0.0568701    0.0343129
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0009046   -0.0616689    0.0634780
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0164789   -0.0454298    0.0783876
6-24 months                   ki1000109-EE              PAKISTAN                       1                    NA                 0.0053949   -0.0082447    0.0190346
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0024764   -0.0094430    0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0025863   -0.0205806    0.0154081
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0010390   -0.0063448    0.0084229
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0173764   -0.0380576    0.0033048
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0007295   -0.0012504    0.0027094


### Parameter: PAF


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0597708   -0.2030116    0.0664146
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0603096   -0.0810304    0.1831700
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0566949   -0.4840648    0.2476042
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0376812   -0.6822643    0.4495172
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    NA                 0.0155859   -0.0167286    0.0468733
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0092334   -0.0160894    0.0339252
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0273677   -0.0783996    0.1227616
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0213791    0.0027889    0.0396227
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0413885   -0.0800127   -0.0041456
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0170366    0.0069839    0.0269875
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.1120915   -0.2453391    0.3669343
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.3134110    0.0286648    0.5146840
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0917647   -0.9894929    0.4008774
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    NA                 0.0667591   -0.0099105    0.1376082
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0427163   -0.0166271    0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.1768900   -0.0737577    0.3690289
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0710389    0.0253776    0.1145610
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0622930   -0.0485362    0.1614077
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0390694    0.0211776    0.0566341
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1829574   -0.3375029   -0.0462693
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0410612   -0.2207379    0.1121695
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0058294   -0.4914856    0.3373217
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1514792   -0.6551987    0.5650145
6-24 months                   ki1000109-EE              PAKISTAN                       1                    NA                 0.0162718   -0.0257576    0.0565791
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0078232   -0.0309120    0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0160663   -0.1341142    0.0896941
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0030253   -0.0187071    0.0242940
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0350524   -0.0777392    0.0059437
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0044247   -0.0076483    0.0163531

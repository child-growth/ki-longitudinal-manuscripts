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

agecat                        studyid                    country                        exclfeed3    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0      175     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        6     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       62     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        5     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       82     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        2     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      139     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0      140     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        4     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0       85     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1        6     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       83     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        2     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      148     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        1     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       69     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        1     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      214     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        2     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       33     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      231     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       10     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       68     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      175     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        5     249
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        6      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        4      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        6      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        4      10
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      306     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       44     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0       19     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        7     376
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      368     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       1       53     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       0       20     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        2     443
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      481     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       12     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      187     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1        7     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0     1517    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      279    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0      177    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1       43    2016
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      299     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       85     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       70     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       12     466
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    21934   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      816   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2588   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      102   25440
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      143     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1        5     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       15     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        1     164
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      176     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        4     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       64     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       83     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        1     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      139     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        1     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0      142     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        2     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0       87     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        3     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       85     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      146     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       70     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      215     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       34     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       68     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      179     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        1     249
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        6       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        5       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      334     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1       13     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0       22     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        3     372
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      400     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       15     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       0       21     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     437
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      490     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        3     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      187     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1        3     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0     1715    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       76    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0      204    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1       12    2007
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      360     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       11     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       75     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1        2     448
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    22222   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      369   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2597   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       51   25239
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      147     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        0     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       14     162
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        1     162
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      169     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0       63     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        2     236
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       79     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      126     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0      139     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        2     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0       89     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        3     233
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       83     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        2     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      147     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        0     232
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       65     268
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     268
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      201     268
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        1     268
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       31     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      213     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        8     253
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       65     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      170     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        4     239
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0      10
6-24 months                   ki1000108-IRC              INDIA                          0                       0       10      10
6-24 months                   ki1000108-IRC              INDIA                          0                       1        0      10
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      314     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       34     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0       21     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        5     374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       0      359     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       1       39     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       0       18     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     417
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      426     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1        9     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      176     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1        4     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0     1489    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1      211    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0      179    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1       31    1910
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      303     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       84     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       69     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       12     468
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14704   16722
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      480   16722
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1481   16722
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       57   16722
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      143     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1        6     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       16     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        0     165


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
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/fd606b35-6c77-4e1b-8d73-5d8d6ade9beb/4b36afd2-2ba5-4a08-aa25-54b1ea7910e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd606b35-6c77-4e1b-8d73-5d8d6ade9beb/4b36afd2-2ba5-4a08-aa25-54b1ea7910e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd606b35-6c77-4e1b-8d73-5d8d6ade9beb/4b36afd2-2ba5-4a08-aa25-54b1ea7910e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd606b35-6c77-4e1b-8d73-5d8d6ade9beb/4b36afd2-2ba5-4a08-aa25-54b1ea7910e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0331492   0.0070154   0.0592830
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0746269   0.0115756   0.1376782
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1257143   0.0909357   0.1604928
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.2692308   0.0985077   0.4399538
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0243408   0.0107277   0.0379539
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0360825   0.0098202   0.0623447
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1555644   0.1388130   0.1723159
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1909220   0.1386645   0.2431795
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2207078   0.1791591   0.2622566
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1493696   0.0706578   0.2280815
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0360992   0.0332499   0.0389485
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0381580   0.0304914   0.0458247
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0423659   0.0330289   0.0517029
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0553469   0.0247159   0.0859779
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0162716   0.0143609   0.0181823
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0205266   0.0145946   0.0264586
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.0977012   0.0664645   0.1289378
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.1923077   0.0406152   0.3440002
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1240588   0.1083912   0.1397264
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1478659   0.0995299   0.1962018
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2162925   0.1752102   0.2573749
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1348755   0.0588760   0.2108750
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0317671   0.0286629   0.0348714
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0357465   0.0256306   0.0458624


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0443548   0.0186794   0.0700303
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1356383   0.1009829   0.1702937
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1597222   0.1437265   0.1757180
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2081545   0.1712538   0.2450552
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0360849   0.0334047   0.0387651
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0438465   0.0348864   0.0528067
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0166409   0.0147720   0.0185098
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1042781   0.0732627   0.1352934
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1267016   0.1117799   0.1416232
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2051282   0.1685055   0.2417509
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0321134   0.0291271   0.0350997


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 2.2512438   0.7088614   7.149632
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 2.1416084   1.0722110   4.277597
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4823883   0.5920038   3.711927
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.2272856   0.9147175   1.646661
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6767754   0.3866681   1.184543
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0570332   0.8523743   1.310832
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.3064024   0.7202806   2.369475
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2614986   0.9336953   1.704388
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 1.9683257   0.8403400   4.610403
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.1919015   0.8394921   1.692249
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6235790   0.3442859   1.129442
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1252672   0.8357532   1.515072


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0112057   -0.0073761   0.0297874
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0099240   -0.0026748   0.0225228
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0033157   -0.0050469   0.0116783
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0041578   -0.0018489   0.0101645
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0125533   -0.0281061   0.0029994
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000143   -0.0008856   0.0008571
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0014806   -0.0019470   0.0049082
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003693   -0.0002299   0.0009684
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0065769   -0.0044632   0.0176171
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0026428   -0.0029243   0.0082099
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0111643   -0.0266618   0.0043331
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003463   -0.0006317   0.0013242


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2526369   -0.2669408   0.5591336
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0731653   -0.0230498   0.1603315
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1198890   -0.2346253   0.3726069
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0260314   -0.0122453   0.0628606
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0603078   -0.1373135   0.0114840
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003953   -0.0248346   0.0234611
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0337684   -0.0473929   0.1086406
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0221917   -0.0143411   0.0574087
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0630710   -0.0475520   0.1620121
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0208583   -0.0240265   0.0637758
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0544262   -0.1324413   0.0182144
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0107823   -0.0201201   0.0407485

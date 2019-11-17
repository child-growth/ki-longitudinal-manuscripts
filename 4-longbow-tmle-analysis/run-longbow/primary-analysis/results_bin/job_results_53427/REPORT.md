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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** exclfeed3

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

agecat      studyid                    country                        exclfeed3    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      112     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       26     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       63     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       14     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       10      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        2      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       39      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        6      57
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       16      41
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        8      41
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       17      41
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        8      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       16      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2      26
Birth       ki0047075b-MAL-ED          PERU                           1                  0       41     223
Birth       ki0047075b-MAL-ED          PERU                           1                  1        8     223
Birth       ki0047075b-MAL-ED          PERU                           0                  0      158     223
Birth       ki0047075b-MAL-ED          PERU                           0                  1       16     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       12     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       79     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        9     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       14     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       69     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     102
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       4
Birth       ki1000108-IRC              INDIA                          1                  0        0      10
Birth       ki1000108-IRC              INDIA                          1                  1        0      10
Birth       ki1000108-IRC              INDIA                          0                  0       10      10
Birth       ki1000108-IRC              INDIA                          0                  1        0      10
Birth       ki1000109-EE               PAKISTAN                       1                  0       20      35
Birth       ki1000109-EE               PAKISTAN                       1                  1       15      35
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      35
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      35
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0      257     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1       89     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      353     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1       34     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      138     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       14     539
Birth       ki1101329-Keneba           GAMBIA                         1                  0     1130    1356
Birth       ki1101329-Keneba           GAMBIA                         1                  1       68    1356
Birth       ki1101329-Keneba           GAMBIA                         0                  0      149    1356
Birth       ki1101329-Keneba           GAMBIA                         0                  1        9    1356
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      317     458
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       63     458
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       63     458
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       15     458
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8076   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3938   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0      818   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      444   13276
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       71     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       34     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0        7     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4     116
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      128     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       24     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       61     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       20     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       59     187
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      123     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        4     187
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       90     210
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       20     210
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       81     210
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       19     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       66     227
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        4     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      150     227
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7     227
6 months    ki0047075b-MAL-ED          PERU                           1                  0       49     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1       12     270
6 months    ki0047075b-MAL-ED          PERU                           0                  0      163     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1       46     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       20     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      177     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       45     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       34     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       12     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      125     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       41     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6 months    ki1000108-IRC              INDIA                          1                  0        0      10
6 months    ki1000108-IRC              INDIA                          1                  1        0      10
6 months    ki1000108-IRC              INDIA                          0                  0        8      10
6 months    ki1000108-IRC              INDIA                          0                  1        2      10
6 months    ki1000109-EE               PAKISTAN                       1                  0       17      39
6 months    ki1000109-EE               PAKISTAN                       1                  1       22      39
6 months    ki1000109-EE               PAKISTAN                       0                  0        0      39
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      364     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       64     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      144     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       32     604
6 months    ki1101329-Keneba           GAMBIA                         1                  0     1317    1742
6 months    ki1101329-Keneba           GAMBIA                         1                  1      224    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  0      166    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  1       35    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      292     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       75     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       56     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       18     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6391    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     2123    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0      597    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      217    9328
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       64      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       12      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0        8      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       71     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       64     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       35     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       35     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       49     152
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        3     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0       96     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        4     152
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       49     202
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       53     202
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       66     202
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       34     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       53     220
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       14     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      119     220
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       34     220
24 months   ki0047075b-MAL-ED          PERU                           1                  0       25     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1       18     198
24 months   ki0047075b-MAL-ED          PERU                           0                  0      101     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       54     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       14     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        5     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      134     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       75     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       10     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       28     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       39     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      107     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
24 months   ki1000108-IRC              INDIA                          1                  0        0      10
24 months   ki1000108-IRC              INDIA                          1                  1        0      10
24 months   ki1000108-IRC              INDIA                          0                  0        4      10
24 months   ki1000108-IRC              INDIA                          0                  1        6      10
24 months   ki1000109-EE               PAKISTAN                       1                  0        5      20
24 months   ki1000109-EE               PAKISTAN                       1                  1       15      20
24 months   ki1000109-EE               PAKISTAN                       0                  0        0      20
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      266     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1      142     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      122     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       48     578
24 months   ki1101329-Keneba           GAMBIA                         1                  0      855    1420
24 months   ki1101329-Keneba           GAMBIA                         1                  1      419    1420
24 months   ki1101329-Keneba           GAMBIA                         0                  0       81    1420
24 months   ki1101329-Keneba           GAMBIA                         0                  1       65    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      181     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      141     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       33     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       29     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2275    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     2158    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      181    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      238    4852
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       84     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       52     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0        6     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        9     151


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/bad73e81-6f22-445f-a4c7-af0e7127862f/9d7f95c6-3f6c-4692-a1e5-9069fa3dcf23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bad73e81-6f22-445f-a4c7-af0e7127862f/9d7f95c6-3f6c-4692-a1e5-9069fa3dcf23/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bad73e81-6f22-445f-a4c7-af0e7127862f/9d7f95c6-3f6c-4692-a1e5-9069fa3dcf23/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bad73e81-6f22-445f-a4c7-af0e7127862f/9d7f95c6-3f6c-4692-a1e5-9069fa3dcf23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1900766   0.1243847   0.2557685
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1791358   0.0927300   0.2655416
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1632653   0.0595443   0.2669863
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.0919540   0.0489223   0.1349857
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2572254   0.2236819   0.2907690
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3333333   0.0564891   0.6101775
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0875285   0.0592330   0.1158239
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0930720   0.0449539   0.1411902
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                0.0567613   0.0436539   0.0698687
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                0.0569620   0.0208096   0.0931144
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1659212   0.1285318   0.2033107
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2180286   0.1286224   0.3074348
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3294906   0.3203263   0.3386549
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3352357   0.3244676   0.3460039
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1550436   0.0968565   0.2132307
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2513920   0.1568948   0.3458892
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1752760   0.1046700   0.2458820
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1927479   0.1129315   0.2725643
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.2085609   0.1091257   0.3079961
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2197554   0.1634660   0.2760447
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2785120   0.1473447   0.4096794
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2473709   0.1817072   0.3130345
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1505106   0.1166546   0.1843667
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1828958   0.1258633   0.2399284
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                0.1443964   0.1268304   0.1619623
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                0.1832545   0.1315699   0.2349390
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2038596   0.1625360   0.2451833
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2326091   0.1337362   0.3314819
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2500884   0.2392940   0.2608828
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2585040   0.2298486   0.2871594
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4573314   0.3748056   0.5398573
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5365026   0.4280010   0.6450043
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5043195   0.4066795   0.6019596
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.3525782   0.2609407   0.4442156
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2142335   0.1165437   0.3119233
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2233168   0.1570205   0.2896130
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4256110   0.2774325   0.5737895
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.3493095   0.2737562   0.4248628
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2631579   0.0647216   0.4615942
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3588517   0.2936789   0.4240244
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7339723   0.5849099   0.8830346
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7383410   0.6664173   0.8102647
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3473712   0.3014384   0.3933041
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2862261   0.2188812   0.3535710
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.3276163   0.3018930   0.3533395
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.4678060   0.3899878   0.5456243
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4390092   0.3849544   0.4930641
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4564356   0.3391403   0.5737309
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4876690   0.4700851   0.5052529
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.5592943   0.5042531   0.6143355
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3823529   0.2957347   0.4689712
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.6000000   0.3670443   0.8329557


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1860465   0.1339088   0.2381842
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1076233   0.0668572   0.1483894
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2609890   0.2179233   0.3040547
Birth       ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                0.0567847   0.0444621   0.0691072
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1703057   0.1358418   0.2047695
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3300693   0.3209240   0.3392146
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1857143   0.1329930   0.2384356
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2500000   0.1915738   0.3084262
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1486797   0.1319680   0.1653914
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2108844   0.1727677   0.2490010
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2508576   0.2404565   0.2612588
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4829268   0.4143544   0.5514993
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4306931   0.3622377   0.4991484
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2181818   0.1634817   0.2728819
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3636364   0.2964623   0.4308104
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3508772   0.2887937   0.4129607
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7336957   0.6696530   0.7977384
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3408451   0.3161830   0.3655071
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4427083   0.3929634   0.4924533
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.4938170   0.4765272   0.5111067
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4039735   0.3218653   0.4860818


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9424400   0.5209839   1.7048380
Birth       ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 0.5632184   0.2558581   1.2398080
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.2958801   0.6113712   2.7467853
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.0633341   0.5786204   1.9540951
Birth       ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                 1.0035369   0.5107633   1.9717278
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.3140491   0.8216482   2.1015383
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0174364   0.9986073   1.0366206
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.6214279   0.9552436   2.7522073
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 1.0996825   0.6165061   1.9615406
6 months    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 1.0536748   0.6140721   1.8079809
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.8881874   0.5175816   1.5241595
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.0057497   0.4866253   2.0786680
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.2151690   0.8275708   1.7843015
6 months    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 1.2691073   0.9351745   1.7222812
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1410255   0.7123979   1.8275448
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0336506   0.9215417   1.1593980
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.1731155   0.9089890   1.5139897
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.6991166   0.5075003   0.9630814
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 1.0423989   0.6059703   1.7931497
24 months   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 0.8207248   0.5455598   1.2346752
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.3636364   0.6278426   2.9617362
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0059521   0.8036074   1.2592463
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.8239777   0.6301619   1.0774043
24 months   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 1.4279085   1.1899730   1.7134192
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0396949   0.7860706   1.3751505
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.1468728   1.0365939   1.2688838
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.5692308   1.0057767   2.4483420


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0040301   -0.0430513    0.0349911
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0556420   -0.1433470    0.0320630
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0037636   -0.0100156    0.0175428
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0015253   -0.0136966    0.0167472
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0000234   -0.0044574    0.0045042
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0043845   -0.0118441    0.0206130
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0005787   -0.0000140    0.0011714
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0337976   -0.0046387    0.0722339
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0104383   -0.0392478    0.0601244
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0062539   -0.0820711    0.0945789
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0285120   -0.1442513    0.0872273
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0000862   -0.0108674    0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0084298   -0.0109842    0.0278438
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0042833   -0.0019209    0.0104875
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0070247   -0.0109075    0.0249569
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0007692   -0.0018251    0.0033636
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0255954   -0.0169981    0.0681889
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0736265   -0.1401809   -0.0070721
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0039483   -0.0780663    0.0859630
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0619746   -0.1923007    0.0683514
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0877193   -0.1037709    0.2792095
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002766   -0.1327455    0.1321923
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0186515   -0.0425144    0.0052114
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0132288    0.0046511    0.0218065
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0036991   -0.0164521    0.0238503
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0061480    0.0012659    0.0110301
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0216206   -0.0032699    0.0465111


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0216618   -0.2544534    0.1679301
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.5170068   -1.5702556    0.1046378
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0144204   -0.0378960    0.0640998
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0171281   -0.1695620    0.1740179
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0004119   -0.0816941    0.0762858
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0257446   -0.0742458    0.1164279
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0017533   -0.0000447    0.0035480
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.1789737   -0.0492535    0.3575584
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0562062   -0.2526750    0.2889243
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0291131   -0.4825335    0.3641821
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1140480   -0.6880130    0.2647550
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0002744   -0.0352245    0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0530374   -0.0769734    0.1673535
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0288090   -0.0138099    0.0696363
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0333107   -0.0554860    0.1146370
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0030664   -0.0073340    0.0133595
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0530005   -0.0402015    0.1378517
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1709488   -0.3374371   -0.0251855
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0180965   -0.4397994    0.3303689
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.1704302   -0.5905114    0.1387004
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2500000   -0.5519753    0.6375587
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0003770   -0.1982451    0.1648167
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0567398   -0.1319316    0.0134572
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0388118    0.0132895    0.0636739
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0083556   -0.0382535    0.0528724
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0124499    0.0025395    0.0222619
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0535198   -0.0115565    0.1144095

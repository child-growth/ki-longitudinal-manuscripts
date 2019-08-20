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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        enstunt    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       34    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       61    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       11    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       18    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       15     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       51    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       89    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       20    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       18    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       16     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       59     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        4     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       14     93
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1       20     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        8     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       16     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       54     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       12     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       28     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        9     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       88    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      163    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       32    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       43    326
0-24 months   ki1000108-IRC              INDIA                          0                    0      140    395
0-24 months   ki1000108-IRC              INDIA                          0                    1      207    395
0-24 months   ki1000108-IRC              INDIA                          1                    0       22    395
0-24 months   ki1000108-IRC              INDIA                          1                    1       26    395
0-24 months   ki1000109-EE               PAKISTAN                       0                    0       92    257
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       71    257
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       58    257
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       36    257
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       74    200
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    1       68    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0       35    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    1       23    200
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      320    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1      236    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      184    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       74    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      117    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        9    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      104    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      162    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1      187    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       40    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       32    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      105    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1      153    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       23    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       26    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       88    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      178    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       29    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       16    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      243    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      409    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       38    713
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0      589   1522
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1      736   1522
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      112   1522
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       85   1522
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0        7     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       12     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       14     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     38
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      457    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1       24    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      327    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       12    820
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      230    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1      260    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       38    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       33    561
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0       40    190
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    1       68    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       40    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       42    190
0-24 months   ki1114097-CMIN             BRAZIL                         0                    0        7     13
0-24 months   ki1114097-CMIN             BRAZIL                         0                    1        6     13
0-24 months   ki1114097-CMIN             BRAZIL                         1                    0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         1                    1        0     13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0      153    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    1       98    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0       64    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       19    334
0-24 months   ki1114097-CMIN             PERU                           0                    0       15     94
0-24 months   ki1114097-CMIN             PERU                           0                    1       62     94
0-24 months   ki1114097-CMIN             PERU                           1                    0        7     94
0-24 months   ki1114097-CMIN             PERU                           1                    1       10     94
0-24 months   ki1114097-CONTENT          PERU                           0                    0        1      9
0-24 months   ki1114097-CONTENT          PERU                           0                    1        6      9
0-24 months   ki1114097-CONTENT          PERU                           1                    0        1      9
0-24 months   ki1114097-CONTENT          PERU                           1                    1        1      9
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0      613   4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     3811   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0        2   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1        5   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     1424   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1842   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      206   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      103   3575
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      141    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      167    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       72    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        1    381
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     1674   2663
0-24 months   ki1135781-COHORTS          INDIA                          0                    1      622   2663
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      345   2663
0-24 months   ki1135781-COHORTS          INDIA                          1                    1       22   2663
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      604   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      964   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       60   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       61   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       25     79
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        5     79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       41     79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        8     79
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2806   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2395   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1570   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      804   7575
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      944   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      386   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      590   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      149   2069
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0        9     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       43     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        4     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        6     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       13     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       22     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       46     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        4     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       11     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0        8     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       26     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        8     43
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        8     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        8     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       19     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        9     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       51    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      114    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       15    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       23    203
0-6 months    ki1000108-IRC              INDIA                          0                    0       78    240
0-6 months    ki1000108-IRC              INDIA                          0                    1      140    240
0-6 months    ki1000108-IRC              INDIA                          1                    0        9    240
0-6 months    ki1000108-IRC              INDIA                          1                    1       13    240
0-6 months    ki1000109-EE               PAKISTAN                       0                    0       30    108
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       43    108
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       17    108
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       18    108
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0       26    112
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    1       52    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0       17    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    1       17    112
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0      107    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    1      142    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0       59    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       33    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       46     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       32     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0       52    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    1      135    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0       12    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1       24    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0       34    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1      127    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0        5    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       18    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      163    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0        3    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       14    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       97    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      222    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0        4    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       17    340
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0      130    416
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1      238    416
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0       22    416
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       26    416
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        4     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        6     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       65    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       96    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       10    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        9    180
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0       13     52
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    1       19     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0       12     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    1        8     52
0-6 months    ki1114097-CMIN             BRAZIL                         0                    0        4      9
0-6 months    ki1114097-CMIN             BRAZIL                         0                    1        5      9
0-6 months    ki1114097-CMIN             BRAZIL                         1                    0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         1                    1        0      9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0       19     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    1       22     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0        7     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        1     49
0-6 months    ki1114097-CMIN             PERU                           0                    0        9     52
0-6 months    ki1114097-CMIN             PERU                           0                    1       38     52
0-6 months    ki1114097-CMIN             PERU                           1                    0        1     52
0-6 months    ki1114097-CMIN             PERU                           1                    1        4     52
0-6 months    ki1114097-CONTENT          PERU                           0                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0                    1        4      4
0-6 months    ki1114097-CONTENT          PERU                           1                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                    1        0      4
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0      487   4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1     3770   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0        1   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1        5   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      594   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1777   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0       52   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       94   2517
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0       51    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1      160    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0        4    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1        0    215
0-6 months    ki1135781-COHORTS          INDIA                          0                    0      992   1795
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      622   1795
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      159   1795
0-6 months    ki1135781-COHORTS          INDIA                          1                    1       22   1795
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0      187    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      534    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       11    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       20    752
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1083   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2395   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      456   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      804   4738
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      173    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      235    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0       71    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       74    553
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       25     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       18     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        7     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       12     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2      9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       29     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       43     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       16     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        7     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0        8     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       33     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        3     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        6     50
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       12     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        5     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       35     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       19     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       37    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       49    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       17    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       20    123
6-24 months   ki1000108-IRC              INDIA                          0                    0       62    155
6-24 months   ki1000108-IRC              INDIA                          0                    1       67    155
6-24 months   ki1000108-IRC              INDIA                          1                    0       13    155
6-24 months   ki1000108-IRC              INDIA                          1                    1       13    155
6-24 months   ki1000109-EE               PAKISTAN                       0                    0       62    149
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       28    149
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       41    149
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       18    149
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       48     88
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    1       16     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0       18     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        6     88
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      213    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1       94    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      125    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       41    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       71    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        9    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       72    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      110    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1       52    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       28    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1        8    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       71    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       26    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       70    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       15    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       26    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        2    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      146    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      187    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       19    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    373
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0      459   1106
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1      498   1106
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0       90   1106
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       59   1106
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0        7     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      457    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1       24    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      327    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       12    820
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      165    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1      164    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       28    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       24    381
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0       27    138
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    1       49    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       28    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       34    138
6-24 months   ki1114097-CMIN             BRAZIL                         0                    0        3      4
6-24 months   ki1114097-CMIN             BRAZIL                         0                    1        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         1                    0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         1                    1        0      4
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0      134    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    1       76    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0       57    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       18    285
6-24 months   ki1114097-CMIN             PERU                           0                    0        6     42
6-24 months   ki1114097-CMIN             PERU                           0                    1       24     42
6-24 months   ki1114097-CMIN             PERU                           1                    0        6     42
6-24 months   ki1114097-CMIN             PERU                           1                    1        6     42
6-24 months   ki1114097-CONTENT          PERU                           0                    0        1      5
6-24 months   ki1114097-CONTENT          PERU                           0                    1        2      5
6-24 months   ki1114097-CONTENT          PERU                           1                    0        1      5
6-24 months   ki1114097-CONTENT          PERU                           1                    1        1      5
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0      126    168
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1       41    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0        1    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1        0    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      830   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       65   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      154   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1        9   1058
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0       90    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1        7    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       68    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        1    166
6-24 months   ki1135781-COHORTS          INDIA                          0                    0      682    868
6-24 months   ki1135781-COHORTS          INDIA                          0                    1        0    868
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      186    868
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        0    868
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      417    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      430    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       49    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       41    937
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       21     75
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        5     75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       41     75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        8     75
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1723   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1114   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0   2837
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      771   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      151   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      519   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       75   1516


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
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/d1864c49-6c3d-4518-9da0-756f19f7be68/30537f99-b3a5-4931-94b1-1fefc81b3f2c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1864c49-6c3d-4518-9da0-756f19f7be68/30537f99-b3a5-4931-94b1-1fefc81b3f2c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1864c49-6c3d-4518-9da0-756f19f7be68/30537f99-b3a5-4931-94b1-1fefc81b3f2c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1864c49-6c3d-4518-9da0-756f19f7be68/30537f99-b3a5-4931-94b1-1fefc81b3f2c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6417729   0.5407312   0.7428145
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6304000   0.4661818   0.7946181
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6373785   0.5439715   0.7307854
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5270480   0.3809453   0.6731508
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6507006   0.5866778   0.7147234
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5680233   0.4524582   0.6835883
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5963071   0.5407666   0.6518475
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5315023   0.3671839   0.6958208
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.4264060   0.3434316   0.5093804
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.3961064   0.2911105   0.5011024
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4839943   0.3981718   0.5698167
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3823707   0.2517219   0.5130195
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4229905   0.3797175   0.4662634
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2896590   0.2319234   0.3473946
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5370400   0.4805073   0.5935728
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4373132   0.3213599   0.5532665
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5916599   0.5286874   0.6546323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5234849   0.3880773   0.6588925
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6668589   0.6089996   0.7247182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3690742   0.2283887   0.5097597
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6280661   0.5888262   0.6673061
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6157330   0.4764577   0.7550083
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5556333   0.5266518   0.5846147
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4331509   0.3522846   0.5140172
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6315789   0.4004047   0.8627532
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2631579   0.0627483   0.4635675
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0499411   0.0307189   0.0691633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0361496   0.0160964   0.0562027
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5315395   0.4836849   0.5793941
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4769403   0.3485500   0.6053306
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6280715   0.5273877   0.7287554
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5127361   0.3881207   0.6373515
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3916301   0.3291274   0.4541328
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2220796   0.1270731   0.3170862
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8051948   0.7114970   0.8988926
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.5882353   0.3181376   0.8583330
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5633367   0.5462192   0.5804543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3376360   0.2842325   0.3910395
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2708733   0.2526024   0.2891442
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0554232   0.0322808   0.0785656
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6145362   0.5891753   0.6398972
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5018677   0.4108252   0.5929103
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1666667   0.0503410   0.2829923
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1632653   0.0532454   0.2732852
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4605583   0.4469824   0.4741343
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3385696   0.3194809   0.3576583
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2874701   0.2624875   0.3124528
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2020834   0.1727130   0.2314537
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6956563   0.6248659   0.7664468
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5808247   0.4113922   0.7502572
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6422018   0.5767550   0.7076487
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.5909091   0.3876738   0.7941444
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5959842   0.4791348   0.7128337
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5268786   0.3618331   0.6919242
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.6628530   0.5578724   0.7678336
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4708588   0.2983425   0.6433752
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5713127   0.5092856   0.6333399
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3556597   0.2554680   0.4558514
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7188268   0.6545556   0.7830980
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5940059   0.4431598   0.7448519
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7888199   0.7259680   0.8516718
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7826087   0.6240234   0.9411940
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.6470165   0.5983284   0.6957046
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.5458297   0.3957786   0.6958808
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5962733   0.5200873   0.6724592
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4736842   0.2460095   0.7013589
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5937500   0.4209755   0.7665245
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4000000   0.1832408   0.6167592
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7495005   0.7320706   0.7669303
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6475797   0.5691277   0.7260316
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3850698   0.3613163   0.4088234
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1180350   0.0702039   0.1658661
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7407607   0.7087112   0.7728101
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6474564   0.4623249   0.8325879
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6891860   0.6737456   0.7046265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6368830   0.6098701   0.6638959
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5761681   0.5288524   0.6234839
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5101628   0.4305368   0.5897888
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4186047   0.2536757   0.5835336
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6315789   0.4683498   0.7948081
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5972222   0.4677197   0.7267248
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3043478   0.0723996   0.5362961
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5690360   0.4537051   0.6843669
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4925489   0.3385993   0.6464985
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5222272   0.4276411   0.6168132
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5054888   0.3187476   0.6922300
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3135587   0.2156694   0.4114480
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.3318031   0.2112457   0.4523605
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.2500000   0.1436227   0.3563773
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2500000   0.0919530   0.4080470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3039588   0.2505896   0.3573281
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2514592   0.1842123   0.3187061
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3209877   0.2478343   0.3941410
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2222222   0.0817786   0.3626658
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2680412   0.1773529   0.3587296
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3076923   0.1243422   0.4910424
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5607696   0.5059142   0.6156250
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4785231   0.3062156   0.6508306
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5208128   0.4870187   0.5546070
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3816893   0.2963251   0.4670535
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5333333   0.2503122   0.8163545
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3846154   0.1100525   0.6591783
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0501980   0.0310708   0.0693252
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0366199   0.0164974   0.0567425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4984724   0.4395210   0.5574238
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4650176   0.3170186   0.6130165
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6514813   0.5336704   0.7692922
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5493870   0.4130444   0.6857296
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3633161   0.2969903   0.4296420
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2368962   0.1370677   0.3367246
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8000000   0.6400638   0.9599362
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.5000000   0.2000869   0.7999131
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0726257   0.0556825   0.0895688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0552147   0.0218048   0.0886246
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5075368   0.4718652   0.5432083
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4588242   0.3529852   0.5646633
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1923077   0.0609669   0.3236484
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1632653   0.0538812   0.2726495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1640531   0.1405080   0.1875981
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1264718   0.1005041   0.1524396


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4550000   0.3826235   0.5273765
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5394218   0.5121870   0.5666566
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4473684   0.2760904   0.6186464
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3502994   0.2972456   0.4033532
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.7659574   0.6722800   0.8596349
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5440559   0.5275873   0.5605246
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2418325   0.2254819   0.2581831
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1645570   0.0832789   0.2458350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223102   0.4111919   0.4334286
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2585790   0.2392503   0.2779077
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6160714   0.5252688   0.7068741
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6346154   0.5881865   0.6810443
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5192308   0.3806687   0.6577929
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7433453   0.7262923   0.7603982
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3587744   0.3365795   0.3809693
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751794   0.6618445   0.6885143
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2500000   0.1614745   0.3385255
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5036166   0.4722232   0.5350101
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4642857   0.2621560   0.6664155
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3298246   0.2742790   0.3853701
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.7142857   0.5638781   0.8646933
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699433   0.0547084   0.0851781
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1733333   0.0886479   0.2580188
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9822790   0.7236735   1.3332973
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.8268996   0.6036689   1.1326788
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8729411   0.6960645   1.0947637
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.8913232   0.6454982   1.2307657
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.9289420   0.6689818   1.2899203
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.7900315   0.5388796   1.1582360
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.6847885   0.5473080   0.8568033
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8143028   0.6120572   1.0833775
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8847734   0.6685500   1.1709279
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5534517   0.3743001   0.8183509
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9803633   0.7752703   1.2397124
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.7795625   0.6424175   0.9459857
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 0.4166667   0.1790304   0.9697297
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.7238441   0.3692714   1.4188760
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8972812   0.6756345   1.1916405
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8163659   0.6096803   1.0931191
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 0.5670648   0.3592962   0.8949788
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 0.7305503   0.4548780   1.1732897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.5993502   0.5102272   0.7040407
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                 0.2046094   0.1340535   0.3123008
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8166609   0.6780506   0.9836067
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 0.9795918   0.3712732   2.5846201
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7351287   0.6898425   0.7833878
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7029717   0.5937237   0.8323218
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8349305   0.6131722   1.1368894
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9201299   0.6427551   1.3172030
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8840480   0.6103730   1.2804316
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.7103518   0.4794022   1.0525603
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.6225307   0.4606367   0.8413235
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8263547   0.6310012   1.0821881
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9921260   0.7979962   1.2334821
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 0.8436102   0.6346909   1.1212988
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7944079   0.4831164   1.3062770
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 0.6736842   0.3642094   1.2461249
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8640150   0.7637500   0.9774428
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 0.3065289   0.2034577   0.4618156
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8740426   0.6545407   1.1671550
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9241090   0.8808688   0.9694717
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8854409   0.7444870   1.0530816
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.5087719   0.9422667   2.4158689
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.5096057   0.2309319   1.1245650
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8655848   0.5968271   1.2553670
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9679481   0.6399440   1.4640710
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0581851   0.6526068   1.7158198
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 1.0000000   0.4665469   2.1434070
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.8272805   0.6006505   1.1394198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.6923077   0.3535289   1.3557305
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1479290   0.5784746   2.2779584
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8533328   0.5874957   1.2394592
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.7328723   0.5808562   0.9246725
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 0.7211538   0.2958093   1.7581017
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.7295096   0.3744426   1.4212706
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9328853   0.6640383   1.3105794
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8432890   0.6198373   1.1472951
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 0.6520387   0.4119567   1.0320367
6-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           1                    0                 0.6250000   0.3320177   1.1765185
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7602643   0.3974825   1.4541564
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9040216   0.7102990   1.1505789
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 0.8489796   0.3261270   2.2100785
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7709201   0.6000009   0.9905283


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0046761   -0.0498733    0.0405211
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0362549   -0.0751861    0.0026763
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0187987   -0.0489572    0.0113597
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0064337   -0.0263932    0.0135259
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0100636   -0.0589701    0.0388429
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0289943   -0.0751602    0.0171717
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0421551   -0.0656634   -0.0186467
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0168500   -0.0385569    0.0048569
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0085980   -0.0315043    0.0143083
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0430647   -0.0659760   -0.0201533
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011377   -0.0130365    0.0107611
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0162114   -0.0274078   -0.0050151
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.1842105   -0.3548689   -0.0135521
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0060387   -0.0174144    0.0053371
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0092578   -0.0268133    0.0082977
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0491241   -0.1200267    0.0217784
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0413307   -0.0708351   -0.0118263
0-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0392374   -0.0959499    0.0174752
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0192808   -0.0245422   -0.0140194
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0290407   -0.0341109   -0.0239706
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0076683   -0.0146039   -0.0007326
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0021097   -0.1014388    0.0972194
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0382481   -0.0457073   -0.0307889
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0288911   -0.0428002   -0.0149820
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0207795   -0.0547061    0.0131471
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0047018   -0.0245031    0.0150994
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0311694   -0.0995597    0.0372208
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0467816   -0.1078200    0.0142568
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0581163   -0.0910164   -0.0252161
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0058223   -0.0335199    0.0218753
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0007764   -0.0220936    0.0205408
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0124011   -0.0303668    0.0055646
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0129400   -0.0388907    0.0130107
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0745192   -0.1852886    0.0362501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0061552   -0.0108828   -0.0014276
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0262955   -0.0327769   -0.0198140
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0040585   -0.0116122    0.0034951
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0140066   -0.0222339   -0.0057794
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0173978   -0.0412944    0.0064988
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0652663   -0.0121601    0.1426927
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0709064   -0.1393836   -0.0024293
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0080604   -0.0679019    0.0517811
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0060981   -0.0417621    0.0295658
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0048339   -0.0670806    0.0574129
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0000000   -0.0519816    0.0519816
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0185466   -0.0485887    0.0114956
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0179574   -0.0476357    0.0117210
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0083815   -0.0348405    0.0516035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0031289   -0.0222832    0.0160255
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0171962   -0.0299754   -0.0044170
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0690476   -0.2585251    0.1204298
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0062956   -0.0176218    0.0050307
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0050341   -0.0267383    0.0166701
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0500320   -0.1317743    0.0317102
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0334916   -0.0659781   -0.0010051
6-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0857143   -0.1956696    0.0242410
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0026824   -0.0084726    0.0031078
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0048687   -0.0157136    0.0059762
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0189744   -0.1308691    0.0929204
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0149766   -0.0288015   -0.0011516


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0073397   -0.0807406    0.0610761
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0603119   -0.1264777    0.0019676
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0297494   -0.0786296    0.0169156
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0109068   -0.0453479    0.0223995
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0241715   -0.1485479    0.0867362
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0637236   -0.1707466    0.0335159
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1106911   -0.1744686   -0.0503769
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0323920   -0.0748547    0.0083931
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0147462   -0.0547059    0.0236995
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0690367   -0.1071255   -0.0322582
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018147   -0.0209777    0.0169887
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0300534   -0.0511453   -0.0093847
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.4117647   -0.9077869   -0.0447077
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1375471   -0.4257810    0.0924179
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0177257   -0.0519694    0.0154033
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0848508   -0.2163110    0.0324011
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1179867   -0.2061459   -0.0362713
0-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0512266   -0.1302241    0.0222494
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0354390   -0.0452514   -0.0257187
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1200861   -0.1408118   -0.0997370
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0126358   -0.0241488   -0.0012522
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0128205   -0.8402175    0.4425630
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0905688   -0.1084651   -0.0729614
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1117303   -0.1665927   -0.0594479
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0307900   -0.0827168    0.0186463
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0073754   -0.0389277    0.0232186
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0551852   -0.1840120    0.0596246
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0759353   -0.1814493    0.0201554
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1132437   -0.1807295   -0.0496150
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0081659   -0.0478122    0.0299804
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0009852   -0.0284025    0.0257011
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0195412   -0.0483793    0.0085037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0221828   -0.0678329    0.0215158
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.1435185   -0.3845587    0.0555586
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0082804   -0.0146744   -0.0019267
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0732925   -0.0916147   -0.0552778
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0055091   -0.0158310    0.0047080
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0207450   -0.0330237   -0.0086123
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0311358   -0.0749246    0.0108692
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1348837   -0.0549983    0.2905902
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1347222   -0.2784376   -0.0071626
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0143685   -0.1266142    0.0866940
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0118151   -0.0831365    0.0548100
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0156575   -0.2386938    0.1672194
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0000000   -0.2311225    0.1877331
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0649816   -0.1752559    0.0349456
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0592593   -0.1620039    0.0344007
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0303214   -0.1392634    0.1746627
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0056109   -0.0405797    0.0281828
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0341454   -0.0599439   -0.0089748
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.1487179   -0.6420119    0.1963804
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1433987   -0.4305858    0.0861362
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0102021   -0.0551620    0.0328421
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0831858   -0.2291845    0.0454716
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1015436   -0.2048615   -0.0070853
6-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.1200000   -0.2951539    0.0314664
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0383512   -0.1238797    0.0406685
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0096857   -0.0314931    0.0116607
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.1094675   -1.0014729    0.3849939
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1004622   -0.1966109   -0.0120392

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

**Intervention Variable:** birthwt

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

agecat        studyid                    country                        birthwt                       wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------------------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       31    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       46    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       13    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       29    119
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       16     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1     23
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       44    166
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       76    166
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       21    166
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       25    166
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0       12     85
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       55     85
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0        4     85
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1       14     85
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       22     34
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        6     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0       16     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       52     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0        1     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1       14     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        3     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       19     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        0     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        2     24
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       97    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      175    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       23    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       31    326
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              0      117    394
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              1      176    394
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                        0       45    394
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                        1       56    394
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0       91    257
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       60    257
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        0       59    257
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        1       47    257
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        5     10
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        4     10
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        0     10
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1     10
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      316    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      178    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      185    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1      132    811
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       39    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       49    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       44    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       38    170
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       74    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       93    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0       54    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       86    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       61    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1      103    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0       56    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       91    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      244    703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      420    703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       19    703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       20    703
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      455   1212
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      619   1212
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        0       88   1212
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       50   1212
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        1      3
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0      3
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2      3
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0      3
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0        6     13
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        5     13
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        1     13
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        1     13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        0      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        0      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        1      1
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              0        0      3
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      3
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                        0        1      3
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                        1        1      3
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      615   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     3816   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     1169   3568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1279   3568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0      454   3568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      666   3568
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      134    320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1      139    320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       21    320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       26    320
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     1227   2516
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      343   2516
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        0      645   2516
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        1      301   2516
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      524   1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      830   1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      130   1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      180   1664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     2175   7559
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     1281   7559
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     2187   7559
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     1916   7559
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      779   1789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      253   1789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      512   1789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      245   1789
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       10     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       31     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0        3     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       16     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       12     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1     14
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       18     77
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       40     77
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                        0        6     77
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       13     77
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0        6     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       25     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0        1     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        8     40
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1        8     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                        0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                        1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0        7     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       18     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        7     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        0      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1        7      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        0      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1      8
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       55    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      117    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       11    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       20    203
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight              0       65    239
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight              1      115    239
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                        0       22    239
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                        1       37    239
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight              0       29    108
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       37    108
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                        0       18    108
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                        1       24    108
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        2      6
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        4      6
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        0      6
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        0      6
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      102    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       84    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0       63    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       91    340
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       12     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       29     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       18     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       32     91
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       19    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       72    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0       20    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       73    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       13    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       90    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0        8    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       87    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0       92    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      223    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        8    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       12    335
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0       92    334
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      194    334
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                        0       21    334
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                        1       27    334
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        1      3
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0      3
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2      3
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0      3
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0        3      9
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        4      9
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                        0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                        1        1      9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        1      1
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight              0        0      2
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight              1        1      2
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                        0        0      2
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                        1        1      2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      488   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     3775   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      400   2515
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1213   2515
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0      244   2515
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      658   2515
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0       45    210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1      135    210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0        5    210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       25    210
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight              0      677   1717
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      343   1717
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                        0      396   1717
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                        1      301   1717
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      152    746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      427    746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0       44    746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      123    746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0      769   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     1281   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0      763   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     1916   4729
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      110    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      136    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0       91    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      173    510
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       21     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       15     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       10     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       13     59
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       26     89
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       36     89
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       15     89
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       12     89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0        6     45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       30     45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0        3     45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        6     45
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       14     23
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        3     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       34     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        7     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        3     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       12     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        0     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1     16
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       42    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       58    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       12    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       11    123
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              0       52    155
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              1       61    155
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                        0       23    155
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                        1       19    155
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0       62    149
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       23    149
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        0       41    149
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        1       23    149
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        3      4
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        0      4
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        0      4
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      4
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      214    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       94    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      122    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       41    471
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       27     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       20     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       26     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1        6     79
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       55    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       21    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0       34    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       13    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       48    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0       48    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      152    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      197    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       11    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        8    368
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      363    878
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      425    878
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        0       67    878
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       23    878
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0        3      4
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0      4
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              0        0      1
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              1        0      1
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                        0        1      1
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                        1        0      1
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      127    168
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1       41    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      769   1053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1       66   1053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0      210   1053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1        8   1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0       89    110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1        4    110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       16    110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1        1    110
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0      550    799
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1        0    799
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        0      249    799
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        1        0    799
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      372    918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      403    918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0       86    918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1       57    918
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     1406   2830
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1        0   2830
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     1424   2830
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1        0   2830
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      669   1279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      117   1279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      421   1279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1       72   1279


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/d06572a1-a6a9-4da3-91a3-4b0ba380574f/65723455-ffd7-4d33-9872-f9002f87de21/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d06572a1-a6a9-4da3-91a3-4b0ba380574f/65723455-ffd7-4d33-9872-f9002f87de21/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d06572a1-a6a9-4da3-91a3-4b0ba380574f/65723455-ffd7-4d33-9872-f9002f87de21/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d06572a1-a6a9-4da3-91a3-4b0ba380574f/65723455-ffd7-4d33-9872-f9002f87de21/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5816728   0.4612116   0.7021340
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6326291   0.5150386   0.7502197
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6239423   0.5257191   0.7221654
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4947911   0.3425064   0.6470757
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6438717   0.5815113   0.7062321
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5978865   0.4764559   0.7193170
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5996478   0.5381105   0.6611850
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.5420230   0.4448259   0.6392201
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3907997   0.3010545   0.4805448
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4470082   0.3437180   0.5502983
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3614642   0.3150011   0.4079273
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4146432   0.3610798   0.4682067
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5703850   0.4498597   0.6909102
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4787301   0.3651327   0.5923276
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.5625754   0.4809680   0.6441827
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.6100502   0.5301217   0.6899787
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.6418974   0.5604108   0.7233840
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.6314793   0.5622120   0.7007467
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6326867   0.5936898   0.6716837
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.5416318   0.3519978   0.7312658
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5760173   0.5436689   0.6083657
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3595561   0.2708361   0.4482760
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.5238181   0.5036606   0.5439757
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.5917588   0.5634141   0.6201035
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.5088084   0.4482733   0.5693435
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.5511217   0.3977205   0.7045228
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2195812   0.1985687   0.2405936
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.3169387   0.2878073   0.3460701
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6151599   0.5872342   0.6430855
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.5741386   0.5220993   0.6261779
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3728360   0.3563935   0.3892785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4661891   0.4510350   0.4813432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2456186   0.2173863   0.2738509
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3243979   0.2914779   0.3573178
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6896552   0.5686497   0.8106606
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.6842105   0.4652436   0.9031774
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6784338   0.6072664   0.7496012
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5832588   0.4244886   0.7420290
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6388581   0.5666316   0.7110847
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.6174645   0.4915354   0.7433936
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5613589   0.4357292   0.6869887
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.5703596   0.4116168   0.7291023
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4562878   0.3830879   0.5294877
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.5936227   0.5159253   0.6713202
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.6993058   0.5558827   0.8427288
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6420103   0.5075386   0.7764820
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7884791   0.7018604   0.8750978
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.7832232   0.7003396   0.8661067
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8737864   0.8089246   0.9386482
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.9157895   0.8592324   0.9723466
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7079365   0.6569927   0.7588803
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.6000000   0.3803796   0.8196204
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.6786706   0.6245357   0.7328054
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5582221   0.4179053   0.6985388
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7519370   0.7308914   0.7729826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7291826   0.7001692   0.7581960
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7500000   0.6868206   0.8131794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8333333   0.6990149   0.9676518
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3368194   0.3078163   0.3658224
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4349831   0.3981093   0.4718570
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7387554   0.7026600   0.7748509
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.7345551   0.6680567   0.8010534
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6272158   0.6062372   0.6481945
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.7151264   0.6980311   0.7322217
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.5523385   0.4899915   0.6146854
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.6542652   0.5967136   0.7118168
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4276816   0.2437488   0.6116144
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6424308   0.4438871   0.8409745
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5903431   0.4460358   0.7346504
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4731035   0.2536899   0.6925171
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5820384   0.4790841   0.6849927
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4778118   0.2514837   0.7041400
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5459890   0.4468795   0.6450985
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4838539   0.3238316   0.6438763
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2653662   0.1646072   0.3661251
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.3496392   0.2287240   0.4705544
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3048702   0.2516144   0.3581259
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2522886   0.1849508   0.3196264
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4255319   0.2690411   0.5820227
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1875000   0.0693596   0.3056404
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2849062   0.1793624   0.3904500
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2729354   0.1384750   0.4073957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.5644699   0.5109407   0.6179992
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.4210526   0.1645464   0.6775589
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5402363   0.5030217   0.5774508
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2579669   0.1575843   0.3583496
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0790419   0.0609182   0.0971656
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0366972   0.0116831   0.0617114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5188033   0.4814208   0.5561858
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.3900365   0.3041716   0.4759014
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1487950   0.1238199   0.1737702
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1449003   0.1146125   0.1751881


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6302521   0.5419905   0.7185137
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6084337   0.5263180   0.6905495
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5888325   0.5365454   0.6411196
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822441   0.3470621   0.4174262
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5117647   0.4302715   0.5932579
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258890   0.5879514   0.6638267
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5519802   0.5212828   0.5826776
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5451233   0.5286432   0.5616034
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5156250   0.4594779   0.5717721
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2559618   0.2388022   0.2731215
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6069712   0.5823178   0.6316245
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4229395   0.4118068   0.4340723
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2783678   0.2569102   0.2998254
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6883117   0.5823564   0.7942670
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6359833   0.5734338   0.6985327
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6703297   0.5732092   0.7674502
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7014925   0.6517566   0.7512285
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6616766   0.6110579   0.7122953
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7439364   0.7268897   0.7609830
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7619048   0.7043195   0.8194900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3750728   0.3521661   0.3979795
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7372654   0.7055895   0.7689413
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6760414   0.6627031   0.6893798
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4745763   0.3430726   0.6060800
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5393258   0.4214529   0.6571988
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3291139   0.2187678   0.4394600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5570652   0.5044805   0.6096499
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5102506   0.4747348   0.5457664
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0702754   0.0549673   0.0855835
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5010893   0.4669869   0.5351918
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477717   0.1285384   0.1670050


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.0876030   0.8168315   1.4481325
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.7930077   0.5592892   1.1243937
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.9285802   0.7419397   1.1621715
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9039023   0.7349427   1.1117050
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1438295   0.8261535   1.5836596
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.1471211   0.9561302   1.3762632
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.8393106   0.6096563   1.1554743
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.0843884   0.8910712   1.3196456
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    0.9837699   0.8309460   1.1647004
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.8560821   0.6000544   1.2213503
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.6242106   0.4845652   0.8040999
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.1297027   1.0623978   1.2012716
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.0831615   0.7999952   1.4665575
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.4433783   1.2640677   1.6481244
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.9333161   0.8434198   1.0327939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.2503863   1.1838071   1.3207101
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3207381   1.1327580   1.5399134
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.9921053   0.6887362   1.4290999
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8597137   0.6439928   1.1476955
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9665126   0.7647781   1.2214610
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.0160336   0.7088857   1.4562635
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.3009833   1.0582351   1.5994153
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.9180681   0.6839269   1.2323671
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    0.9933341   0.8524676   1.1574782
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.0480702   0.9515991   1.1543213
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.8475336   0.5836432   1.2307403
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.8225229   0.6322473   1.0700621
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.9697389   0.9236756   1.0180993
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.1111111   0.9263461   1.3327286
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.2914433   1.1443037   1.4575028
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.9943143   0.8972866   1.1018340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1401600   1.0942844   1.1879588
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1845367   1.0264705   1.3669435
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.5021240   0.8809067   2.5614250
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.8014043   0.4738625   1.3553483
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8209284   0.4951203   1.3611305
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.8861972   0.6068285   1.2941803
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.3175727   0.7815097   2.2213386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    0.8275281   0.6013539   1.1387682
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.4406250   0.2122756   0.9146146
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    0.9579832   0.5157101   1.7795497
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.7459257   0.4026578   1.3818315
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.4775076   0.3216380   0.7089135
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.4642758   0.2261753   0.9530307
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.7518003   0.5962781   0.9478862
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.9738250   0.7447162   1.2734181


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0485793   -0.0148111    0.1119696
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0155085   -0.0655815    0.0345645
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0119698   -0.0347510    0.0108113
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0108153   -0.0408945    0.0192640
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0255428   -0.0307510    0.0818366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0207799   -0.0069092    0.0484691
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0586203   -0.1420696    0.0248291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0204865   -0.0328948    0.0738678
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0181032   -0.0700249    0.0338185
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0067977   -0.0164490    0.0028537
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0240371   -0.0357188   -0.0123554
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0213052    0.0103149    0.0322955
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0068166   -0.0173291    0.0309623
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0363807    0.0227613    0.0500001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0081887   -0.0190948    0.0027174
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0501035    0.0378397    0.0623673
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0327492    0.0142911    0.0512073
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0013435   -0.0630803    0.0603933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0035569   -0.0309472    0.0238334
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0028749   -0.0388833    0.0331336
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0034559   -0.0748399    0.0817516
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0584181    0.0099882    0.1068480
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0289761   -0.1386044    0.0806523
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0004356   -0.0614061    0.0605349
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0201530   -0.0212303    0.0615363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064440   -0.0201935    0.0073055
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0169939   -0.0385076    0.0045198
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0080006   -0.0208744    0.0048731
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0119048   -0.0096709    0.0334804
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0382534    0.0190698    0.0574370
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0014900   -0.0183029    0.0153229
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0488256    0.0334249    0.0642263
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0535439    0.0093525    0.0977353
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0468947   -0.0563736    0.1501630
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0510173   -0.1315888    0.0295542
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0210628   -0.0660613    0.0239358
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0298600   -0.0823819    0.0226620
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0433587   -0.0286680    0.1153853
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0182460   -0.0481257    0.0116338
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0964180   -0.1841562   -0.0086798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0084835   -0.0746564    0.0576895
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0074047   -0.0214410    0.0066316
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0299857   -0.0430233   -0.0169481
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0087665   -0.0152510   -0.0022820
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0177140   -0.0325371   -0.0028909
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0010233   -0.0161565    0.0141099


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0770791   -0.0326898    0.1751802
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0254893   -0.1110776    0.0535061
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0189426   -0.0555187    0.0163661
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0183673   -0.0706997    0.0314071
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0613504   -0.0854297    0.1882817
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0543630   -0.0215344    0.1246214
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1145453   -0.2898897    0.0369632
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0351361   -0.0613345    0.1228379
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0290211   -0.1152544    0.0505445
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0108608   -0.0264242    0.0044665
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0435470   -0.0651779   -0.0223554
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0390832    0.0186275    0.0591126
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0132201   -0.0347206    0.0589396
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1421331    0.0871652    0.1937911
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0134911   -0.0315727    0.0042736
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1184649    0.0888601    0.1471078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1176472    0.0481679    0.1820548
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0019519   -0.0957926    0.0838526
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0052705   -0.0466893    0.0345093
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0045204   -0.0627660    0.0505330
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0061186   -0.1426826    0.1355427
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1134980    0.0130599    0.2037149
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0432266   -0.2207295    0.1084660
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0005527   -0.0809899    0.0738990
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0225440   -0.0250709    0.0679472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0091861   -0.0290217    0.0102672
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0256831   -0.0588668    0.0064606
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0107545   -0.0282179    0.0064123
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0156250   -0.0132322    0.0436603
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1019893    0.0493437    0.1517196
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0020210   -0.0250857    0.0205247
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0722228    0.0490259    0.0948539
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0883734    0.0119196    0.1589115
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0988138   -0.1569135    0.2980144
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0945945   -0.2557516    0.0458805
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0375466   -0.1212162    0.0398792
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0578537   -0.1651130    0.0395314
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1404443   -0.1281095    0.3450672
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0636581   -0.1728870    0.0353985
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2929624   -0.5824394   -0.0564396
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0306901   -0.3002274    0.1829720
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0132923   -0.0389212    0.0117043
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0587666   -0.0851688   -0.0330067
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1247451   -0.2174589   -0.0390918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0353510   -0.0654238   -0.0061270
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0069250   -0.1146853    0.0904177
